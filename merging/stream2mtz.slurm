#!/bin/bash -l
#SBATCH --account=lcls
#SBATCH --job-name=autosfx-reconstruction-merging
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH --time=02:00:00
#SBATCH --image=docker:slaclcls/autosfx:latest
#SBATCH --qos=realtime

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

