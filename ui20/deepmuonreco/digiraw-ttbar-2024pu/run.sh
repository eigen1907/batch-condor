#!/bin/bash

job_name=digiraw-ttbar-2024pu
cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/deepmuonreco/sample/CMSSW_14_0_21_patch1
config_path=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/deepmuonreco/${job_name}/${job_name}.py
output_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/${job_name}
input_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/gensim-ttbar-2024
premix_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/premix-2024
n_events=1000
n_queue=150

mkdir -p log

condor_submit condor-submit.sub \
    -append "job_name = ${job_name}" \
    -append "cmssw_path = ${cmssw_path}" \
    -append "config_path = ${config_path}" \
    -append "output_path = ${output_path}" \
    -append "input_path = ${input_path}" \
    -append "premix_path = ${premix_path}" \
    -append "n_events = ${n_events}" \
    -append "n_queue = ${n_queue}"
