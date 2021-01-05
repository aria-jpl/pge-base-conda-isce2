#!/bin/bash

#source ~/.bashrc
#source /home/ops/.bashrc
. /opt/conda/etc/profile.d/conda.sh
conda activate base
export LD_LIBRARY_PATH=/opt/conda/lib:/usr/lib:/usr/lib64:/usr/local/lib:$LD_LIBRARY_PATH


which conda

# ref: https://anaconda.org/conda-forge/isce2
conda install -c conda-forge isce2
#conda install -c conda-forge/label/cf202003 isce2

exit

# https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-python.html

# When built by docker as user ops, using hysds/pge-base:latest as base,
# ~/.bashrc is not sourced by bash. So do this explicitly here,
# because conda in hysds/pge-base:latest is re-used here.
source ~/.bashrc

which conda

conda create --name python368 python=3.6.8 anaconda -y

# do not run this
#conda init bash

which python

conda activate python368

which python

which pip

pip install -r ./requirements.txt
