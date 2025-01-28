#!/bin/bash

JOBID=$1 # $(Process)
CMSSW_PATH=$2 # /eos/user/j/joshin/workspace-eos/rpc-geom/CMSSW_15_0_X_2025-01-21-2300
CONFIG_PATH=$3 # /afs/cern.ch/user/j/joshin/workspace-lxplus/htcondor/250127-geom-val/config/ttbar-2017/TTbar_13TeV_TuneCUETP8M1_cfi_GEN_SIM.py
OUTDIR=$4 # root://eosuser.cern.ch/rpc-geom-val/ttbar-2017/step1

cmssw-el8
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
