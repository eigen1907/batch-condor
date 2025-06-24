XRD_PATH="cms-xrdr.private.lo:2094/xrd"

BASE_DIR="/xrootd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/gensim-minbias-2024"
#TARGET_DIR="/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/gensim-minbias-2024-merged"
TARGET_DIR="root://cms-xrdr.private.lo:2094//xrd/store/user/joshin/deepmuonreco/sample/CMSSW_14_0_21_patch1/gensim-minbias-2024-merged"
for subdir in $(ls ${BASE_DIR}); do
    #echo ${TARGET_DIR}/${subdir}.root
    hadd -k ${subdir}.root ${BASE_DIR}/${subdir}/output-*.root
    #xrdfs ${XRD_PATH} mv ${subdir}.root ${TARGET_DIR}/${subdir}.root
    xrdcp -v ${subdir}.root ${TARGET_DIR}/${subdir}.root
    rm ${subdir}.root
done
