#!/bin/bash

CMSSW_PATH=$1
CONFIG_PATH1=$2
CONFIG_PATH2=$3
CONFIG_PATH3=$4

echo $(pwd)
echo $(ls)

source /cvmfs/cms.cern.ch/cmsset_default.sh
cd ${CMSSW_PATH}
eval $(scram runtime -sh)

# cmsRun ${CONFIG_PATH1}
# cmsRun ${CONFIG_PATH2}
# cmsRun ${CONFIG_PATH3}

echo $(pwd)
echo $(ls)
cd -