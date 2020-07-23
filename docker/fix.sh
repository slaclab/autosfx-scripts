#!/bin/bash

ls /img
#ls /img/*/*

export PATH=/img/XDS-INTEL64_Linux_x86_64/:$PATH
export PATH=/img/ccp4-7.1/bin:$PATH

echo $PATH

echo "<<<<<<< BEGINNING TEST >>>>>>>>>"

## PROCESS_HKL
if [ -x "$(command -v process_hkl)" ]; then
  echo 'Goood: process_hkl is installed.'
else
  echo 'Error: process_hkl is not installed.'
fi

## CREATE_XSCALE
CREATE_XSCALE_TEMPLATE='/global/cfs/cdirs/lcls/SFX_automation/merging/create_xscale_template'
if [ -f $CREATE_XSCALE_TEMPLATE ]; then
 echo 'Goood: create_xscale!'
else
  echo 'Error: create_scale_template not found at $CREATE_XSCALE_TEMPLATE.'
fi  

## XDSCONV
if [ -x "$(command -v xdsconv)" ]; then
  echo 'Goood: xdsconv is installed.'
else
  echo 'Error: xdsconv is not installed.'
fi

## F2MTZ
if [ -x "$(command -v f2mtz)" ]; then
  echo 'Goood: f2mtz is installed.'
else
  echo 'Error: f2mtz is not installed.'
fi

echo "<<<<<<< ENDING TEST >>>>>>>>>"
