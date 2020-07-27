#!/bin/bash
source /project/projectdirs/lcls/fpoitevi/Software/autosfx-dependencies/ccp4-7.1/bin/ccp4.setup-sh
if [ -x "$(command -v f2mtz)" ]; then
  echo 'Goood: f2mtz is installed.'
  which f2mtz
else
  echo 'Error: f2mtz is not installed.'
fi
