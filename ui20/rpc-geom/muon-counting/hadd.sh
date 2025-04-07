samples=(2025-mu-pt10 2025-mu-pt100 2025-mu-pt1000)
geoms=(current-geometry iRPC-added-geometry target-geometry)

for sample in "${samples[@]}"; do
    for geom in "${geoms[@]}"; do
        input_path=/xrootd/store/user/joshin/rpc-geom/${sample}/${geom}
        mkdir -p output
        hadd output/${sample}-${geom}.root ${input_path}/output*.root       
    done
done