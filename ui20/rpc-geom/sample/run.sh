#!/bin/bash

#samples=(2025-mu-pt10 2025-mu-pt100 2025-mu-pt1000)
samples=(2030-mu)
geoms=(rpcf-2030-v3 rpcf-2030-v4 rpcf-2030-v5 rpcf-2030-v6)
cmssw=CMSSW_15_0_0_pre3
#geoms=(current-geometry iRPC-added-geometry target-geometry)

#samples=(2025-mu-pt10)
#geoms=(current-geometry)

for sample in "${samples[@]}"; do
    for geom in "${geoms[@]}"; do
        job_name=sample-${sample}-${geom}
        cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation-run4/${geom}/${cmssw}
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
