#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4
n_events=$5
n_files=$6

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv
mkdir -p /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}
cd /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}

for (( i_file=0; i_file<${n_files}; i_file++ )); do
    cmsRun ${config_path} \
        outputFile=${output_path}/output-${process}/output-${i_file}.root \
        nEvents=${n_events}
done