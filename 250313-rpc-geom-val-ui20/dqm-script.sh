#!/bin/bash

zellij run -- bash dqm-pt-geom.sh pt1 current-geometry
zellij run -- bash dqm-pt-geom.sh pt1 iRPC-added-geometry
zellij run -- bash dqm-pt-geom.sh pt1 target-geometry
zellij run -- bash dqm-pt-geom.sh pt10 current-geometry
zellij run -- bash dqm-pt-geom.sh pt10 iRPC-added-geometry
zellij run -- bash dqm-pt-geom.sh pt10 target-geometry
zellij run -- bash dqm-pt-geom.sh pt100 current-geometry
zellij run -- bash dqm-pt-geom.sh pt100 iRPC-added-geometry
zellij run -- bash dqm-pt-geom.sh pt100 target-geometry
zellij run -- bash dqm-pt-geom.sh pt1000 current-geometry
zellij run -- bash dqm-pt-geom.sh pt1000 iRPC-added-geometry
zellij run -- bash dqm-pt-geom.sh pt1000 target-geometry
zellij run -- bash dqm-era-geom.sh 2021 current
zellij run -- bash dqm-era-geom.sh 2021 target
zellij run -- bash dqm-era-geom.sh 2023 current
zellij run -- bash dqm-era-geom.sh 2023 target
zellij run -- bash dqm-era-geom.sh 2024 current
zellij run -- bash dqm-era-geom.sh 2024 target
zellij run -- bash dqm-era-geom.sh 2025 current
zellij run -- bash dqm-era-geom.sh 2025 target