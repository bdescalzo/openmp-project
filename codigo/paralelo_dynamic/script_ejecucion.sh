# REPARTO DE A 64 TAREAS
export OMP_SCHEDULE="dynamic, 64"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/64_tareas/res1.txt

# REPARTO DE A 32 TAREAS
export OMP_SCHEDULE="dynamic, 32"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/32_tareas/res1.txt

# REPARTO DE A 16 TAREAS
export OMP_SCHEDULE="dynamic, 16"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/16_tareas/res1.txt

# REPARTO DE A 8 TAREAS
export OMP_SCHEDULE="dynamic, 8"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/8_tareas/res1.txt

# REPARTO DE A 4 TAREAS
export OMP_SCHEDULE="dynamic, 4"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/4_tareas/res1.txt

# REPARTO DE A 2 TAREAS
export OMP_SCHEDULE="dynamic, 2"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/2_tareas/res1.txt

# REPARTO DE A 1 TAREA
export OMP_SCHEDULE="dynamic, 1"

export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res64.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res32.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res16.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res8.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res4.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res2.txt

export OMP_NUM_THREADS=1
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > ~/PROYECTO/resultados_evaluaciones/reparto_dinamico/1_tareas/res1.txt





