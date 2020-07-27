#!/bin/bash

SOFTWARE_PATH=/project/projectdirs/lcls/fpoitevi/Software

# Activate the Conda environment
source $SOFTWARE_PATH/sfxPhasing/Docker/conda.local/env.local
source activate sfx

# CCP4
source $SOFTWARE_PATH/autosfx-dependencies/ccp4-7.1/bin/ccp4.setup-sh
if [ -x "$(command -v f2mtz)" ]; then
  echo 'Goood: f2mtz is installed.'
  which f2mtz
else
  echo 'Error: f2mtz is not installed.'
fi

# PHENIX
source $SOFTWARE_PATH/autosfx-dependencies/phenix-installer-1.18.2-3874-intel-linux-2.6-x86_64-centos6/phenix-1.18.2-3874/phenix_env.sh
if [ -x "$(command -v phenix)" ]; then
  echo 'Goood: phenix is installed.'
  which phenix
else
  echo 'Error: phenix is not installed.'
fi

