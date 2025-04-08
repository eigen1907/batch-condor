#!/bin/bash

sample=$1
geometry=$2

cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation/${geometry}/CMSSW_15_0_0
config=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/dqm/step4-2025.py

cd ${cmssw_path}
cmsenv
cd -
mkdir -p dqm-output
cd dqm-output

cmsRun ${config} \
    inputFiles_load=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/dqm/dqm-list/${sample}-${geometry}.list \
    filePrepend=file:

mv DQM*.root ${sample}-${geometry}.root
