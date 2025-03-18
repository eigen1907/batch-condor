#!/bin/bash

ETA_RANGE=$1
GEOMETRY=$2

INPUT_DIR="/cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation/${ETA_RANGE}/${GEOMETRY}"
OUTPUT_FILE="dqm/DQM-${ETA_RANGE}-${GEOMETRY}.root"

hadd -j 30 $OUTPUT_FILE $INPUT_DIR/DQM-*.root
