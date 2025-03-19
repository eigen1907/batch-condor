#!/bin/bash

PT=$1
GEOMETRY=$2

INPUT_DIR="/cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation-pt/${PT}/${GEOMETRY}"
OUTPUT_FILE="indqm/inDQM-${PT}-${GEOMETRY}.root"

hadd -j 20 $OUTPUT_FILE $INPUT_DIR/inDQM-*.root
