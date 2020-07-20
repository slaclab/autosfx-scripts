#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-unitcell
#SBATCH --nodes=1
#SBATCH --constraint=knl
#SBATCH --time=24:00:00
#SBATCH --image=docker:slaclcls/crystfel:latest
#SBATCH --exclusive
#SBATCH --qos=premium

srun -n 1 -c 1 shifter \
    ./peak_finding.sh
    
