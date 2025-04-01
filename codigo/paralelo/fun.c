/*
    AC - OpenMP -- SERIE
    fun_s.c
     rutinas que se utilizan en el modulo gengrupos_s.c
****************************************************************************/
#include <math.h>
#include <float.h> // DBL_MAX
#include <stdlib.h>
#include <math.h>
//#include <stdio.h>
#include <omp.h>
#include "defineg.h"           // definiciones


/**************************************************************************************
   1 - Funcion para calcular la distancia genetica entre dos elementos (distancia euclidea)
       Entrada:  2 elementos con NCAR caracteristicas (por referencia)
       Salida:  distancia (double)
**************************************************************************************/
double gendist (float *elem1, float *elem2)
{
    int i = 0;

	double resultado = 0, suma=0;

	// Por cada caracteristica, calculamos la diferencia, la elevamos al cuadrado, y la anadimos al resultado
        for(i=0;i<NCAR;i++){
            suma=elem1[i]-elem2[i];
            resultado+=(suma*suma);
        }   
    
    resultado=sqrt(resultado);
    return resultado;
}


/****************************************************************************************
   2 - Funcion para calcular el grupo (cluster) mas cercano (centroide mas cercano)
   Entrada:  nelem  numero de elementos, int
             elem   elementos, una matriz de tamanno MAXE x NCAR, por referencia
             cent   centroides, una matriz de tamanno NGRUPOS x NCAR, por referencia
   Salida:   popul  grupo mas cercano a cada elemento, vector de tamanno MAXE, por referencia
*****************************************************************************************/
void grupo_cercano (int nelem, float elem[][NCAR], float cent[][NCAR], int *popul)
{
    int i,j;
	int centMenor;
    float min,aInvestigar;
	// Por cada muestra i
    #pragma omp parallel shared(popul, nelem, ngrupos)
    {
    #pragma omp for private(i, j, aInvestigar, min, centMenor)
    for (i=0;i<nelem;i++){
        min=-1;
        centMenor=0;
		// Para cada centroide j
        for(j=0;j<ngrupos;j++){
                aInvestigar= gendist(elem[i],cent[j]);
				// Si el centroide j es el más cercano a la muestra i, se lo asignamos
                if(min==-1 || aInvestigar<min){
                    min=aInvestigar;
                    centMenor=j;
                }
        }

		// Asignamos a la muestra i el centroide más cercano que hayamos encontrado
        popul[i]=centMenor;
    }
    }
}


/****************************************************************************************
   3 - Funcion para calcular la calidad de la particion de clusteres.
       Ratio entre a y b. El termino a corresponde a la distancia intra-cluster.
       El termino b corresponde a la distancia inter-cluster.
   Entrada:  elem     elementos, una matriz de tamanno MAXE x NCAR, por referencia
             listag   vector de NGRUPOS structs (informacion de grupos generados), por ref.
             cent     centroides, una matriz de tamanno NGRUPOS x NCAR, por referencia
   Salida:   valor del CVI (double): calidad/ bondad de la particion de clusters
*****************************************************************************************/

double silhouette_simple(float elem[][NCAR], struct lista_grupos *listag, float cent[][NCAR], float *a){
    int i,j,k; // Variables para iteraciones
    double bK[ngrupos],maxK; // Terminos del indice de validacion
	double sk[ngrupos];
    double suma,S;
    S=0;


//    #pragma omp parallel for private(i, suma, j, k) shared(a,bK, sk)
    for (i=0;i<ngrupos;i++){
        suma=0.0;

        // CALCULO DEL TERMINO A

		// Si el num. de elementos del cluster i es menor o igual a 1, su distancia intracluster es 0
        if(listag[i].nelemg<=1){
            a[i]=0;
        }
		// En caso contrario, calculamos la distancia acorde a la formula del CVI
	    else{
            #pragma omp parallel for private(j, k) reduction(+:suma)
            for (j=0; j < listag[i].nelemg; j++){
                for (k=0; k<j; k++){
                    suma += 2.0*gendist(elem[listag[i].elemg[j]],elem[listag[i].elemg[k]]);
                }
            }
            a[i]=suma/pow(listag[i].nelemg,2.0);
        }


        // CALCULO DEL TERMINO B
        suma = 0;
        #pragma omp parallel for private(j) reduction(+:suma)
        for(j=0;j<ngrupos;j++){
            suma+=gendist(cent[i],cent[j]);
        }
        bK[i]=suma/(ngrupos-1);

        // CALCULO DEL TERMINO s

		// Encontramos el maximo entre a(i) y b(i)
        if(a[i]<bK[i]) maxK = bK[i];
        else maxK=a[i];

		// Aplicamos la formula de la calidad del cluster i
        sk[i] = (bK[i]-a[i])/maxK;
    }

    // CALCULO DE S: CALIDAD TOTAL DE LA PARTICION
    for (i = 0; i < ngrupos; i++) {
        S += sk[i];
    }

    S = S / ngrupos;

    return S;
}


/********************************************************************************************
   4 - Funcion para relizar el analisis de enfermedades
   Entrada:  listag   vector de NGRUPOS structs (informacion de grupos generados), por ref.
             enf      enfermedades, una matriz de tamaño MAXE x TENF, por referencia
   Salida:   prob_enf vector de TENF structs (informacion del análisis realizado), por ref.
*****************************************************************************************/
void analisis_enfermedades (struct lista_grupos *listag, float enf[][TENF], struct analisis *prob_enf)
{
    int i, j, k, t;

    // NO PARALELIZAMOS: El overhead no compensa
    for (i=0;i<TENF;i++){
        prob_enf[i].mmax=0;
        prob_enf[i].mmin=1;
    }

    //por cada enfermedad (i)
    #pragma omp parallel for private(i, j, k, t) shared(listag, enf, ngrupos)
    for (i=0;i<TENF;i++){
        // Por cada grupo (j)
        for(j=0;j<ngrupos;j++){
            // El vector probs[n] contiene la probabilidad de que el elemento n del grupo j tenga la enfermedad i
            float *probs = (float *)malloc(listag[j].nelemg * sizeof(float));

            for (k=0;k<listag[j].nelemg;k++){
                probs[k]=enf[listag[j].elemg[k]][i];
            }

            // Ordenamos las probabilidades de la enfermedad i en el grupo j. No paralelizamos el bubble sort, pues existen dependencias entre las iteraciones.
            for (k = 0; k < listag[j].nelemg; k++) {
                for (t = 0; t < listag[j].nelemg-1; t++) {
                    if (probs[t]>=probs[t+1]) {
                        float temp = probs[t+1];
                        probs[t+1] = probs[t];
                        probs[t] = temp;
                    }
                }
            }

            float mediana = probs[listag[j].nelemg/2];
            free(probs);

            if (mediana>prob_enf[i].mmax && listag[j].nelemg!=0) {
                prob_enf[i].mmax = mediana;
                prob_enf[i].gmax = j;
            }
            if (mediana<prob_enf[i].mmin && listag[j].nelemg!=0) {
                prob_enf[i].mmin = mediana;
                prob_enf[i].gmin = j;
            }

        }



    }


    // PARA COMPLETAR
    // Realizar el análisis de enfermedades en los grupos:
    //      mediana máxima y el grupo en el que se da este máximo (para cada enfermedad)
    //      mediana mínima y su grupo en el que se da este mínimo (para cada enfermedad)
}





/***************************************************************************************************
   OTRAS FUNCIONES DE LA APLICACION
****************************************************************************************************/

void inicializar_centroides(float cent[][NCAR]){
	int i, j;
	srand (147);
	for (i=0; i<ngrupos; i++)
		for (j=0; j<NCAR/2; j++){
			cent[i][j] = (rand() % 10000) / 100.0;
			cent[i][j+(NCAR/2)] = cent[i][j];
		}
}

int nuevos_centroides(float elem[][NCAR], float cent[][NCAR], int popul[], int nelem){
	int i, j, fin;
	double discent;
	double additions[ngrupos][NCAR+1];
	float newcent[ngrupos][NCAR];

	for (i=0; i<ngrupos; i++)
		for (j=0; j<NCAR+1; j++)
			additions[i][j] = 0.0;

	// acumular los valores de cada caracteristica (100); numero de elementos al final
	for (i=0; i<nelem; i++){
		for (j=0; j<NCAR; j++) additions[popul[i]][j] += elem[i][j];
		additions[popul[i]][NCAR]++;
	}

	// calcular los nuevos centroides y decidir si el proceso ha finalizado o no (en funcion de DELTA)
	fin = 1;
	for (i=0; i<ngrupos; i++){
		if (additions[i][NCAR] > 0) { // ese grupo (cluster) no esta vacio
			// media de cada caracteristica
			for (j=0; j<NCAR; j++)
				newcent[i][j] = (float)(additions[i][j] / additions[i][NCAR]);

			// decidir si el proceso ha finalizado
			discent = gendist (&newcent[i][0], &cent[i][0]);
			if (discent > DELTA1)
				fin = 0;  // en alguna centroide hay cambios; continuar

			// copiar los nuevos centroides
			for (j=0; j<NCAR; j++)
				cent[i][j] = newcent[i][j];
		}
	}
	return fin;
}

