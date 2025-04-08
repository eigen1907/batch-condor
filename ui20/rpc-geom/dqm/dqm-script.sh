#!/bin/bash

zellij run -- bash dqm-run.sh 2025-mu-pt10 current-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt10 iRPC-added-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt10 target-geometry

zellij run -- bash dqm-run.sh 2025-mu-pt100 current-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt100 iRPC-added-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt100 target-geometry

zellij run -- bash dqm-run.sh 2025-mu-pt1000 current-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt1000 iRPC-added-geometry
zellij run -- bash dqm-run.sh 2025-mu-pt1000 target-geometry

zellij run -- bash dqm-run.sh 2025-ZMM current-geometry
zellij run -- bash dqm-run.sh 2025-ZMM iRPC-added-geometry
zellij run -- bash dqm-run.sh 2025-ZMM target-geometry
