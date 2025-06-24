#!/bin/bash

#zellij run -- bash dqm-run.sh 2025-mu-pt10 current-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt10 iRPC-added-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt10 target-geometry
#
#zellij run -- bash dqm-run.sh 2025-mu-pt100 current-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt100 iRPC-added-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt100 target-geometry
#
#zellij run -- bash dqm-run.sh 2025-mu-pt1000 current-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt1000 iRPC-added-geometry
#zellij run -- bash dqm-run.sh 2025-mu-pt1000 target-geometry
#
bash dqm-run.sh 2030-mu rpcf-2030-v3 > rpcf-2030-v3.log 2>&1
bash dqm-run.sh 2030-mu rpcf-2030-v4 > rpcf-2030-v4.log 2>&1
bash dqm-run.sh 2030-mu rpcf-2030-v5 > rpcf-2030-v5.log 2>&1
bash dqm-run.sh 2030-mu rpcf-2030-v6 > rpcf-2030-v6.log 2>&1

#zellij run -- bash dqm-run.sh 2025-mu-pt10 target-geometry-exclude-iRPCSimHits
#zellij run -- bash dqm-run.sh 2025-mu-pt100 target-geometry-exclude-iRPCSimHits
#zellij run -- bash dqm-run.sh 2025-mu-pt1000 target-geometry-exclude-iRPCSimHits
#zellij run -- bash dqm-run.sh 2025-mu-pt10 target-geometry
