#!/bin/bash

#pts=(pt10-step1-step23 pt10-step12-step3 pt100-step1-step23 pt100-step12-step3)
#geoms=(iRPC-added-geometry target-geometry)
#
#mkdir -p indqm-list
#
#for pt in "${pts[@]}"; do
#    for geom in "${geoms[@]}"; do
#        out_file="indqm-list/${pt}-${geom}-current-geometry.list"
#        ls /xrootd/store/user/joshin/rpc-geom/validation-pt/${pt}/${geom}-current-geometry/inDQM*.root > "${out_file}"
#        echo "Created: ${out_file}"
#    done
#done
#
#pts=(pt10-step1-step23 pt10-step12-step3 pt100-step1-step23 pt100-step12-step3)
#geoms=(iRPC-added-geometry target-geometry)
#
#mkdir -p indqm-list
#
#for pt in "${pts[@]}"; do
#    for geom in "${geoms[@]}"; do
#        out_file="indqm-list/${pt}-current-geometry-${geom}.list"
#        ls /xrootd/store/user/joshin/rpc-geom/validation-pt/${pt}/current-geometry-${geom}/inDQM*.root > "${out_file}"
#        echo "Created: ${out_file}"
#    done
#done

pts=(ZMM-q100)
geoms=(current-geometry iRPC-added-geometry target-geometry)

mkdir -p indqm-list

for pt in "${pts[@]}"; do
    for geom in "${geoms[@]}"; do
        out_file="indqm-list/${pt}-${geom}.list"
        ls /xrootd/store/user/joshin/rpc-geom/validation-pt/${pt}/${geom}/inDQM*.root > "${out_file}"
        echo "Created: ${out_file}"
    done
done

#eras=(2021 2023 2024 2025)
#geoms=(current target)
#
#mkdir -p indqm-list
#
#for era in "${eras[@]}"; do
#    for geom in "${geoms[@]}"; do
#        out_file="indqm-list/${era}-${geom}.list"
#        ls /xrootd/store/user/joshin/rpc-geom/validation-existing/${era}/${geom}/inDQM*.root > "${out_file}"
#        echo "Created: ${out_file}"
#    done
#done
