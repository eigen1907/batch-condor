#!/bin/bash

XRD_PATH="cms-xrdr.private.lo:2094/xrd"
#DIR_PATH="/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/digiraw-ttbar-2024pu"
FILE_PATH="/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/recosimdqm-ttbar-2024pu/output-inDQM-109.root"
xrdfs ${XRD_PATH} rm ${FILE_PATH}
#DIR_PATH="/store/user/joshin/rpc-geom/2025-ZMM/target-geometry/"
#for file in $(xrdfs ${XRD_PATH} ls ${DIR_PATH}); do
#    echo ${file}
#    xrdfs ${XRD_PATH} rm ${file}
#done
#xrdfs ${XRD_PATH} rmdir ${DIR_PATH}


#XRD_PATH="cms-xrdr.private.lo:2094/xrd"
##BASE_DIR="/store/user/joshin/rpc-geom/2025-mu-pt100-phi/current-geometry"
#BASE_DIR="/store/user/joshin/muon-id/sample"
#for subdir in $(xrdfs ${XRD_PATH} ls ${BASE_DIR}); do
#    for file in $(xrdfs ${XRD_PATH} ls ${subdir}); do
#        xrdfs ${XRD_PATH} rm ${file}
#    done
#    xrdfs ${XRD_PATH} rmdir ${subdir}
#done
#xrdfs ${XRD_PATH} rmdir ${BASE_DIR}
