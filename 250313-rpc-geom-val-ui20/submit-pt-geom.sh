#!/bin/bash

PT=$1
GEOMETRY=$2
mkdir -p log/${PT}/${GEOMETRY}
condor_submit submit/pt-geom.sub -append "pt = ${PT}" -append "geometry = ${GEOMETRY}"
