#!/bin/bash

PROCESS=$1
CMSSW_PATH=$2
OUTPUT_DIR=$3
RUN_PATHS=("${@:4:4}")

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW_PATH}
eval $(scram runtime -sh)
cd -

for run_script in "${RUN_PATHS[@]}"; do
    cmsRun "$run_script"
done

xrdcp step1.root ${OUTPUT_DIR}/step1-${PROCESS}.root
xrdcp step2.root ${OUTPUT_DIR}/step2-${PROCESS}.root
xrdcp step3.root ${OUTPUT_DIR}/step3-${PROCESS}.root
xrdcp step3_inDQM.root ${OUTPUT_DIR}/inDQM-${PROCESS}.root
xrdcp DQM*.root ${OUTPUT_DIR}/DQM-${PROCESS}.root