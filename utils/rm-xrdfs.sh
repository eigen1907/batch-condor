#!/bin/bash

XRD_PATH="cms-xrdr.private.lo:2094/xrd"
DIR_PATH="/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/premix-2024"
for file in $(xrdfs ${XRD_PATH} ls ${DIR_PATH}); do
    echo ${file}
    xrdfs ${XRD_PATH} rm ${file}
done
xrdfs ${XRD_PATH} rmdir ${DIR_PATH}


#XRD_PATH="cms-xrdr.private.lo:2094/xrd"
#BASE_DIR="/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/step1-minbias2024"
#for subdir in $(xrdfs ${XRD_PATH} ls ${BASE_DIR}); do
#    for file in $(xrdfs ${XRD_PATH} ls ${subdir}); do
#        xrdfs ${XRD_PATH} rm ${file}
#    done
#    xrdfs ${XRD_PATH} rmdir ${subdir}
#done
#xrdfs ${XRD_PATH} rmdir ${BASE_DIR}
