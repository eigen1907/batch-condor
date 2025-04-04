#!/bin/bash

ERA=$1
GEOMETRY=$2

CMSSW_PATH=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation-existing/${GEOMETRY}/CMSSW_15_1_0_pre1
CMSRUN_CFI=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/run/${ERA}/step4.py

cd ${CMSSW_PATH}
cmsenv
mkdir -p /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${ERA}-${GEOMETRY}
cd /cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/dqm/${ERA}-${GEOMETRY}

cmsRun ${CMSRUN_CFI} \
    inputFiles_load=/cms/ldap_home/sjws5411/workspace-ui20/workspace-batch/250313-rpc-geom-val-ui20/indqm-list/${ERA}-${GEOMETRY}.list \
    filePrepend=file:
