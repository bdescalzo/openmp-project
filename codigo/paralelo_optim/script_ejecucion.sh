export OMP_NUM_THREADS=64
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res64Optim.txt

export OMP_NUM_THREADS=32
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res32Optim.txt

export OMP_NUM_THREADS=16
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res16Optim.txt

export OMP_NUM_THREADS=8
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res8Optim.txt

export OMP_NUM_THREADS=4
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res4Optim.txt

export OMP_NUM_THREADS=2
./gengrupos ../../../ARQ/pgenetica/dbgen.dat ../../../ARQ/pgenetica/dbenf.dat > aa/res2Optim.txt