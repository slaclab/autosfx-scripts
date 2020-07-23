#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=arp_example
#SBATCH --nodes=1
#SBATCH --constraint=knl
#SBATCH --time=00:15:00
#SBATCH --image=docker:slaclcls/sfxPhasing:latest
#SBATCH --exclusive
#SBATCH --qos=premium

srun -n 1 -c 1 shifter \
    python batch_sub.py -rfl cxic0415_sz_ccp4IF.mtz -seq strep_mono.fasta.txt -SFAC Se -q psanaq -n 12 -ATOM_R 3 5 

