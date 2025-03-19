#!/bin/bash

#mm activate root-py39

bash merge-era-geom.sh 2024 current
bash merge-era-geom.sh 2023 current

bash merge-eta-geom.sh eta-m2.5-m1.5 iRPC-added-geometry
bash merge-eta-geom.sh eta-m2.5-m1.5 stagger-fixed-iRPC-added-geometry
bash merge-eta-geom.sh eta-m2.5-m1.5 stagger-fixed-fine-tuned-geometry
bash merge-eta-geom.sh eta-m2.5-m1.5 stagger-fixed-geometry

bash merge-eta-geom.sh base iRPC-added-geometry
bash merge-eta-geom.sh base stagger-fixed-fine-tuned-geometry
bash merge-eta-geom.sh base stagger-fixed-geometry
bash merge-eta-geom.sh base stagger-fixed-iRPC-added-geometry
