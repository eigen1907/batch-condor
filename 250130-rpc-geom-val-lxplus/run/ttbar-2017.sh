#!/bin/bash

CMSSW_PATH=$1
CONFIG_PATH1=$2
CONFIG_PATH2=$3
CONFIG_PATH3=$4
OUTPUT_DIR=$5
PROCESS=$6

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW_PATH}
eval $(scram runtime -sh)
cd -

cmsRun ${CONFIG_PATH1}
cmsRun ${CONFIG_PATH2}
cmsRun ${CONFIG_PATH3}

xrdcp step1.root ${OUTPUT_DIR}/step1-${PROCESS}.root
xrdcp step2.root ${OUTPUT_DIR}/step2-${PROCESS}.root
xrdcp step3.root ${OUTPUT_DIR}/step3-${PROCESS}.root
xrdcp step3_inDQM.root ${OUTPUT_DIR}/step3_inDQM-${PROCESS}.root
