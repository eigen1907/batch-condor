#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4
min_phi=$5
max_phi=$6
max_events=$7

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv

tmp=/tmp/joshin/phi${min_phi}_${max_phi}_$(date +"%s")
mkdir -p ${tmp}
cd ${tmp}

cmsRun ${config_path}/step1.py \
    outputFile=step1.root \
    minPhi=${min_phi} \
    maxPhi=${max_phi} \
    maxEvents=${max_events}


cmsRun ${config_path}/step2.py \
    inputFiles=file:step1_numEvent${max_events}.root \
    outputFile=step2.root \
    maxEvents=${max_events}

cmsRun ${config_path}/step3.py \
    inputFiles=file:step2_numEvent${max_events}.root \
    outputFile=step3.root \
    maxEvents=${max_events}

cmsRun ${config_path}/step4.py \
    inputFiles=file:step3_inDQM.root \
    maxEvents=${max_events}

xrdcp step1_numEvent${max_events}.root ${output_path}/step1.root
xrdcp step2_numEvent${max_events}.root ${output_path}/step2.root
xrdcp step3_numEvent${max_events}.root ${output_path}/step3.root
xrdcp step3_inDQM.root ${output_path}/step3_inDQM.root
xrdcp DQM*.root ${output_path}/step4_DQM.root

rm -rf ../${tmp}

