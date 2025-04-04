#!/bin/bash

PROCESS=$1
CMSSW1_PATH=$2
CMSSW2_PATH=$3
OUTPUT_DIR=$4

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW1_PATH}
eval $(scram runtime -sh)
cd -

cmsRun step1.py
cmsRun step2.py

cd ${CMSSW2_PATH}
eval $(scram runtime -sh)
cd -
cmsRun step3.py

xrdcp step1.root ${OUTPUT_DIR}/step1-${PROCESS}.root
xrdcp step2.root ${OUTPUT_DIR}/step2-${PROCESS}.root
xrdcp step3.root ${OUTPUT_DIR}/step3-${PROCESS}.root
xrdcp step3_inDQM.root ${OUTPUT_DIR}/inDQM-${PROCESS}.root
