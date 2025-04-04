#!/bin/bash

PT=$1
GEOMETRY=$2

CMSSW_PATH=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation/${GEOMETRY}/CMSSW_15_0_0
CMSRUN_CFI=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/run/step4/step4.py

cd ${CMSSW_PATH}
cmsenv
mkdir -p /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${PT}-${GEOMETRY}
cd /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${PT}-${GEOMETRY}

cmsRun ${CMSRUN_CFI} \
    inputFiles_load=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/indqm-list/${PT}-${GEOMETRY}.list \
    filePrepend=file:
