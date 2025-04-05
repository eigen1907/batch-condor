#!/bin/bash

process=$1
cmssw_path=$2
config_path=$3
output_path=$4

cmssw-el9
source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${cmssw_path}
cmsenv

mkdir -p ${output_path}

cmsRun ${config_path}/step1.py \
    outputFile=${output_path}/step1_${process}.root

cmsRun ${config_path}/step2.py \
    inputFiles=file:${output_path}/step1_${process}.root \
    outputFile=${output_path}/step2_${process}.root

cmsRun ${config_path}/step3.py \
    inputFiles=file:${output_path}/step2_${process}.root \
    outputFile=${output_path}/step3_${process}.root \
    outputTFile=${output_path}/output_${process}.root
