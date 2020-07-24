#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-debug
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH --time=02:00:00
#SBATCH --image=docker:slaclcls/autosfx:latest
###SBATCH --exclusive
#SBATCH --qos=realtime
### SBATCH --qos=premium

srun -n 1 -c 1 shifter \
    ./test-docker-image.sh  

