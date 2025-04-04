#!/bin/bash

PT=$1
GEOMETRY1=$2
GEOMETRY2=$3

CMSSW_PATH=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation/${GEOMETRY2}/CMSSW_15_0_0
CMSRUN_CFI=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/run/step4/step4.py

cd ${CMSSW_PATH}
cmsenv
mkdir -p /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${PT}-${GEOMETRY1}-${GEOMETRY2}
cd /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${PT}-${GEOMETRY1}-${GEOMETRY2}

cmsRun ${CMSRUN_CFI} \
    inputFiles_load=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/indqm-list/${PT}-${GEOMETRY1}-${GEOMETRY2}.list \
    filePrepend=file:
