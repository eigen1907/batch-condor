#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4
n_events=$5

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv
mkdir -p /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}
cd /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}

cmsRun ${config_path} \
    outputFile=${output_path}/output-${process}.root \
    nEvents=${n_events}
