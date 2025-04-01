export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res64Optim.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res32Optim.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res16Optim.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res8Optim.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res4Optim.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > res2Optim.txt