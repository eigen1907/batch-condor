#!/bin/bash

CMSSW_PATH=$1
CONFIG_PATH1=$2
CONFIG_PATH2=$3
CONFIG_PATH3=$4

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW_PATH}
eval $(scram runtime -sh)
cd -

cmsRun ${CONFIG_PATH1}
cmsRun ${CONFIG_PATH2}
cmsRun ${CONFIG_PATH3}
