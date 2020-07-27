#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-local-debug
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH --time=02:00:00
#SBATCH --qos=realtime

srun -n 1 -c 1 \
    ./test-local-dependencies.sh  

