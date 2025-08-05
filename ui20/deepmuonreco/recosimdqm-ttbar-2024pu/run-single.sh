#!/bin/bash

process=$1
job_name=recosimdqm-ttbar-2024pu
cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/deepmuonreco/sample/CMSSW_14_0_21_patch1
config_path=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/deepmuonreco/${job_name}/${job_name}.py
output_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/${job_name}
input_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/digiraw-ttbar-2024pu
n_events=1000

bash condor-executable.sh \
    ${process} \
    ${cmssw_path} \
    ${config_path} \
    ${output_path} \
    ${input_path} \
    ${n_events}

