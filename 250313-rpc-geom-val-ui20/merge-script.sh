#!/bin/bash

bash merge-pt-geom.sh pt1 current-geometry
bash merge-pt-geom.sh pt1 iRPC-added-geometry
bash merge-pt-geom.sh pt1 target-geometry

bash merge-pt-geom.sh pt10 current-geometry
bash merge-pt-geom.sh pt10 iRPC-added-geometry
bash merge-pt-geom.sh pt10 target-geometry

bash merge-pt-geom.sh pt100 current-geometry
bash merge-pt-geom.sh pt100 iRPC-added-geometry
bash merge-pt-geom.sh pt100 target-geometry

bash merge-pt-geom.sh pt1000 current-geometry
bash merge-pt-geom.sh pt1000 iRPC-added-geometry
bash merge-pt-geom.sh pt1000 target-geometry
