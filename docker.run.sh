#!/bin/bash

set -e

name=pge-base-conda-isce2

docker run \
    --name ${name} \
    -v ~/hysds:/home/x/hysds \
    -v ~/hysds/landslide:/home/ops/try \
    --rm \
    -it \
    hysds1/${name}:20201212 /bin/bash
#    --entrypoint=/bin/bash \
