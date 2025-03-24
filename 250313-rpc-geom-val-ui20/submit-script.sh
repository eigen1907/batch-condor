#!/bin/bash

#bash submit-pt-geom.sh pt1 current-geometry
#bash submit-pt-geom.sh pt1 iRPC-added-geometry
#bash submit-pt-geom.sh pt1 target-geometry
#bash submit-pt-geom.sh pt10 current-geometry
#bash submit-pt-geom.sh pt10 iRPC-added-geometry
#bash submit-pt-geom.sh pt10 target-geometry
#bash submit-pt-geom.sh pt100 current-geometry
#bash submit-pt-geom.sh pt100 iRPC-added-geometry
#bash submit-pt-geom.sh pt100 target-geometry
#bash submit-pt-geom.sh pt1000 current-geometry
#bash submit-pt-geom.sh pt1000 iRPC-added-geometry
#bash submit-pt-geom.sh pt1000 target-geometry

bash submit-era-geom.sh 2021 current
bash submit-era-geom.sh 2021 target

bash submit-era-geom.sh 2023 current
bash submit-era-geom.sh 2023 target

bash submit-era-geom.sh 2024 current
bash submit-era-geom.sh 2024 target

bash submit-era-geom.sh 2025 current
bash submit-era-geom.sh 2025 target
