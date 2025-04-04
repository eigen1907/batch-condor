#!/bin/bash

process=$1
config_path=$2
output_path=$3

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${config_path}
cmsenv
cd -

cp ${config_path}/*.py .

cmsRun step1.py
cmsRun step2.py
cmsRun step3.py

cp -r step1.root ${output_path}/step1_${process}.root
cp -r step2.root ${output_path}/step2_${process}.root
cp -r step3.root ${output_path}/step3_${process}.root
cp -r step3_inDQM.root ${output_path}/step3_inDQM_${process}.root
cp -r output.root ${output_path}/output_${process}.root

rm *.root
