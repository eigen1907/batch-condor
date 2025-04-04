#!/bin/bash

#config_path=$1
#output_path=$2

config_path=/home/joshin/workspace-uos/muon-id/sample/CMSSW_14_2_2/workspace/ttbar-2024
output_path=/home/joshin/store-home/muon-id/DeepRecoMu/sample/ttbar-2024

config_name=$(basename ${config_path})
mkdir -p log/${config_name}

condor_submit submit.sub \
    -append "config_path = ${config_path}" \
    -append "config_name = ${config_name}" \
    -append "output_path = ${output_path}"
