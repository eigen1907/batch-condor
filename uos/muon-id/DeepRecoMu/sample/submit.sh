#!/bin/bash

job_name=ttbar-2024
cmssw_path=/home/joshin/workspace-uos/muon-id/sample/CMSSW_14_2_2
config_path=/home/joshin/workspace-uos/batch-condor/uos/muon-id/DeepRecoMu/sample/config/ttbar-2024
output_path=/home/joshin/store-home/muon-id/DeepRecoMu/sample/ttbar-2024

mkdir -p log/${job_name}

condor_submit submit.sub \
    -append "job_name = ${job_name}" \
    -append "cmssw_path = ${cmssw_path}" \
    -append "config_path = ${config_path}" \
    -append "output_path = ${output_path}"
