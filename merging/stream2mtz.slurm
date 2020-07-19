#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-reconstruction
#SBATCH --nodes=1
#SBATCH --constraint=knl
#SBATCH --time=24:00:00
#SBATCH --image=docker:slaclcls/crystfel:latest
#SBATCH --exclusive
#SBATCH --qos=premium

srun -n 1 -c 1 shifter \
    ./stream2mtz.sh  \
      stream:cxic0415.stream  \
      jobname:strep  \
      ucell:strep_more.cell  \
      pgroup:2  \
      sgnum:4  \
      maxadu:13500  \
      wavela:0.969  \
      merge:TRUE  \
      friedel:FALSE  \
      workdir:/project/projectdirs/lcls/exp/cxi/cxic0515/scratch/  \
      highres:1.5

