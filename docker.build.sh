#!/bin/bash

set -e

name=pge-base-conda-isce2
context=.

#    --no-cache \
docker build ${context} \
    --file ${context}/docker/Dockerfile \
    --tag hysds1/${name}:20201212
