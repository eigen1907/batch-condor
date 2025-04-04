#!/bin/bash

ERA=$1
GEOMETRY=$2
mkdir -p log/${ERA}/${GEOMETRY}
condor_submit submit/era-geom.sub -append "era = ${ERA}" -append "geometry = ${GEOMETRY}"
