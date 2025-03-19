#!/bin/bash

ETA=$1
GEOMETRY=$2

INPUT_DIR="/cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation/${ETA}/${GEOMETRY}"
OUTPUT_FILE="dqm/DQM-${ETA}-${GEOMETRY}.root"

hadd -j 20 $OUTPUT_FILE $INPUT_DIR/DQM-*.root
