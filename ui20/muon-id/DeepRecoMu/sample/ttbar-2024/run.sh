#!/bin/bash

job_name=ttbar-2024
cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/muon-id/sampling/CMSSW_14_2_2
config_path=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/muon-id/DeepRecoMu/sample/config/ttbar-2024
output_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/muon-id/sample/ttbar-2024

mkdir -p log/${job_name}

condor_submit submit.sub \
    -append "job_name = ${job_name}" \
    -append "cmssw_path = ${cmssw_path}" \
    -append "config_path = ${config_path}" \
    -append "output_path = ${output_path}"
