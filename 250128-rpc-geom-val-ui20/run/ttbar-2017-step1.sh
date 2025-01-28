#!/bin/bash

JOBID=$1
CMSSW_PATH=$2
CONFIG_PATH=$3
OUTDIR=$4

source /cvmfs/cms.cern.ch/cmsset_default.sh

cd ${CMSSW_PATH}
eval $(scram runtime -sh)

if [ ! -d "/tmp/joshin/job-${JOBID}" ]; then
  mkdir -p /tmp/joshin/job-${JOBID}
fi
cd /tmp/joshin/job-${JOBID}
cmsRun ${CONFIG_PATH}

xrdcp step1.root ${OUTDIR}/output-${JOBID}.root
rm -r /tmp/joshin/job-${JOBID}
