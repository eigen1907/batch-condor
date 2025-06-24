#!/bin/bash

#samples=(2025-mu-pt10 2025-mu-pt100 2025-mu-pt1000)
samples=(2030-mu)

#geoms=(current-geometry iRPC-added-geometry target-geometry)
geoms=(rpcf-2030-v3 rpcf-2030-v4 rpcf-2030-v5 rpcf-2030-v6)

mkdir -p dqm-list
for sample in "${samples[@]}"; do
    for geom in "${geoms[@]}"; do
        out_file="dqm-list/${sample}-${geom}.list"
        ls /xrootd/store/user/joshin/rpc-geom/${sample}/${geom}/step3_inDQM*.root > "${out_file}"
        echo "Created: ${out_file}"
    done
done
