#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-reconstruction-phasing
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH --time=00:10:00
#SBATCH --image=docker:slaclcls/autosfx:latest
#SBATCH --qos=realtime

srun -n 1 -c 1 shifter \
    ./phasing.sh
