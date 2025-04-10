#!/bin/bash

samples=(2025-mu-pt10 2025-mu-pt100 2025-mu-pt1000)
#geoms=(current-geometry iRPC-added-geometry target-geometry)
geoms=(target-geometry-change-matching)

mkdir -p dqm-list
for sample in "${samples[@]}"; do
    for geom in "${geoms[@]}"; do
        out_file="dqm-list/${sample}-${geom}.list"
        ls /xrootd/store/user/joshin/rpc-geom/${sample}/${geom}/step3_inDQM*.root > "${out_file}"
        echo "Created: ${out_file}"
    done
done
