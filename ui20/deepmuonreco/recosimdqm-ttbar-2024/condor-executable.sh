#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4
input_path=$5
n_events=$6

pwd

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv
mkdir -p /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}
cd /tmp/${USER}/$(date +"%Y%m%d-%H%M%S")/${process}

cmsRun ${config_path} \
    outputFile=${output_path}/output-${process}.root \
    inputFiles=${input_path}/output-${process}.root \
    nEvents=${n_events}

xrdcp -v output-inDQM.root ${output_path}/output-inDQM-${process}.root
xrdcp -v output-tfile.root ${output_path}/output-tfile-${process}.root
