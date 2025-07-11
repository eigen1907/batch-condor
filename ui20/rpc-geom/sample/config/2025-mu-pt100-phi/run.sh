#!/bin/bash

cmssw=CMSSW_15_0_0
sample=2025-mu-pt100-phi
config_path=/cms/ldap_home/sjws5411/workspace-ui20/batch-condor/ui20/rpc-geom/sample/config/${sample}
geoms=(current-geometry target-geometry target-geometry-exclude-iRPCSimHits)

max_events=10000

for geom in "${geoms[@]}"; do
    cmssw_path=/cms/ldap_home/sjws5411/workspace-ui20/rpc-geom/validation/${geom}/${cmssw}
    
    for ((deg=-5; deg<=335; deg+=20)); do
        phi_start=$(awk -v d=$deg 'BEGIN{printf "%.6f", d*atan2(0,-1)/180}')
        deg_end=$((deg+20))
        phi_end=$(awk -v d=$deg_end 'BEGIN{printf "%.6f", d*atan2(0,-1)/180}')
        
        job_name=sample-${sample}-${geom}-phi${deg}_${deg_end}
        output_path=root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/rpc-geom/${sample}/${geom}/phi${deg}_${deg_end}
        mkdir -p log/${job_name}
        condor_submit submit.sub \
            -append "job_name = ${job_name}" \
            -append "cmssw_path = ${cmssw_path}" \
            -append "config_path = ${config_path}" \
            -append "output_path = ${output_path}" \
            -append "min_phi = ${phi_start}" \
            -append "max_phi = ${phi_end}" \
            -append "max_events = ${max_events}"
    done    
done
