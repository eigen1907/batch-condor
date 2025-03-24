#!/bin/bash

pts=(pt1 pt10 pt100 pt1000)
geoms=(current-geometry iRPC-added-geometry target-geometry)

mkdir -p indqm-list

for pt in "${pts[@]}"; do
    for geom in "${geoms[@]}"; do
        out_file="indqm-list/${pt}-${geom}.list"
        ls /cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation-pt/${pt}/${geom}/inDQM*.root > "${out_file}"
        echo "Created: ${out_file}"
    done
done

eras=(2021 2023 2024 2025)
geoms=(current target)

mkdir -p indqm-list

for era in "${eras[@]}"; do
    for geom in "${geoms[@]}"; do
        out_file="indqm-list/${era}-${geom}.list"
        ls /cms/ldap_home/sjws5411/workspace-ui20/xrootd/rpc-geom/validation-existing/${era}/${geom}/inDQM*.root > "${out_file}"
        echo "Created: ${out_file}"
    done
done
