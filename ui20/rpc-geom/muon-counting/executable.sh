#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
input_path=$4
output_path=$5

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv

tmp=/tmp/joshin/${process}_$(date +"%s")
mkdir -p ${tmp}
cd ${tmp}

xrdcp ${input_path}/step3_${process}.root ${tmp}/step3.root

cmsRun ${config_path}/muon-counting.py \
    inputFiles=file:${tmp}/step3.root \
    outputFile=${tmp}/output.root

xrdcp ${tmp}/output.root ${output_path}/output_${process}.root

rm -rf ${tmp}/*


