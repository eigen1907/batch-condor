#!/bin/bash

ERA=$1
GEOMETRY=$2

INPUT_DIR="/cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation/${ERA}/${GEOMETRY}"
OUTPUT_FILE="dqm/DQM-${ERA}-${GEOMETRY}.root"

hadd -j 30 $OUTPUT_FILE $INPUT_DIR/DQM-*.root
