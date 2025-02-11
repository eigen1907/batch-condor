#!/bin/bash

CMSSW_PATH=$1
CMD_PATH=$2
OUTPUT_DIR=$3
PROCESS=$4

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW_PATH}
eval $(scram runtime -sh)
cd -

bash ${CMD_PATH}

xrdcp step1.root ${OUTPUT_DIR}/step1-${PROCESS}.root
xrdcp step2.root ${OUTPUT_DIR}/step2-${PROCESS}.root
xrdcp step3.root ${OUTPUT_DIR}/step3-${PROCESS}.root
xrdcp step3_inDQM.root ${OUTPUT_DIR}/inDQM-${PROCESS}.root
xrdcp DQM*.root ${OUTPUT_DIR}/DQM-${PROCESS}.root
