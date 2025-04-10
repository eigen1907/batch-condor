#!/bin/bash

samples=(2025-mu-pt10 2025-mu-pt100 2025-mu-pt1000 2025-ZMM)
#geoms=(current-geometry iRPC-added-geometry target-geometry)
geoms=(target-geometry-change-matching)

#samples=(2025-mu-pt10)
#geoms=(current-geometry)

for sample in "${samples[@]}"; do
    for geom in "${geoms[@]}"; do
        job_name=sample-${sample}-${geom}
        cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation/${geom}/CMSSW_15_0_0
        config_path=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/config/${sample}
        output_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/rpc-geom/${sample}/${geom}
        
        mkdir -p log/${job_name}
        condor_submit submit.sub \
            -append "job_name = ${job_name}" \
            -append "cmssw_path = ${cmssw_path}" \
            -append "config_path = ${config_path}" \
            -append "output_path = ${output_path}"        
    done
done
