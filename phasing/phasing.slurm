#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=arp_example
#SBATCH --nodes=1
#SBATCH --constraint=knl
#SBATCH --time=00:15:00
#SBATCH --image=docker:slaclcls/crystfel:latest
#SBATCH --exclusive
#SBATCH --qos=premium

srun -n 1 -c 1 shifter \
    ./phasing.sh  

