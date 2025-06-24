#!/bin/bash

sample=$1
geometry=$2

cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation-run4/${geometry}/CMSSW_15_0_0_pre3
config=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/dqm/step4-2030.py

cd ${cmssw_path}
cmsenv
cd -
mkdir -p dqm-output/${sample}-${geometry}
cd dqm-output/${sample}-${geometry}

cmsRun ${config} \
    inputFiles_load=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/dqm/dqm-list/${sample}-${geometry}.list \
    filePrepend=file: \
    > ../${sample}-${geometry}.log 2>&1

cd ..
mv ${sample}-${geometry}/DQM*.root ${sample}-${geometry}.root
rm -r ${sample}-${geometry}
