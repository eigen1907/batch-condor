#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv

tmp=/tmp/joshin/${process}_$(date +"%s")
mkdir -p ${tmp}
cd ${tmp}

cmsRun ${config_path}/step1.py \
    outputFile=${tmp}/step1.root

cmsRun ${config_path}/step2.py \
    inputFiles=file:${tmp}/step1.root \
    outputFile=${tmp}/step2.root

cmsRun ${config_path}/step3.py \
    inputFiles=file:${tmp}/step2.root \
    outputFile=${tmp}/step3.root

xrdcp ${tmp}/step1.root ${output_path}/step1_${process}.root
xrdcp ${tmp}/step2.root ${output_path}/step2_${process}.root
xrdcp ${tmp}/step3.root ${output_path}/step3_${process}.root
xrdcp ${tmp}/step3_inDQM.root ${output_path}/step3_inDQM_${process}.root

rm -rf ${tmp}/*

