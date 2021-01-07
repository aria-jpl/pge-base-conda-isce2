#!/bin/bash

#source ~/.bashrc
#source /home/ops/.bashrc
. /opt/conda/etc/profile.d/conda.sh
conda activate base
export LD_LIBRARY_PATH=/opt/conda/lib:/usr/lib:/usr/lib64:/usr/local/lib:$LD_LIBRARY_PATH


which conda

# ref: https://stackoverflow.com/questions/47955200/specific-package-version-with-conda-forge
# search for all versions
#conda search isce2 --channel conda-forge

# ref: https://anaconda.org/conda-forge/isce2
#conda install -c conda-forge isce2
conda install -c conda-forge isce2=2.4.2
#conda install -c conda-forge/label/cf202003 isce2
