#!/bin/bash

ETA=$1
GEOMETRY=$2
mkdir -p log/${ETA}/${GEOMETRY}
condor_submit submit/eta-geom.sub -append "eta = ${ETA}" -append "geometry = ${GEOMETRY}"
