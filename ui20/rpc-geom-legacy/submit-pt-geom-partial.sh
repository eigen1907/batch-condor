#!/bin/bash

PT=$1
GEOMETRY1=$2
GEOMETRY2=$3
mkdir -p log/${PT}/${GEOMETRY1}-${GEOMETRY2}
condor_submit submit/pt-geom-partial.sub -append "pt = ${PT}" -append "geometry1 = ${GEOMETRY1}" --append "geometry2 = ${GEOMETRY2}"
