cmsDriver.py TTbar_14TeV_TuneCP5_cfi \
    -s GEN,SIM \
    -n 1000 \
    --mc \
    --python_filename gensim-ttbar-2024.py \
    --conditions auto:phase1_2024_realistic \
    --beamspot DBrealistic \
    --datatier GEN-SIM \
    --eventcontent RAWSIM \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --fileout file:gensim-ttbar-2024.root

cmsDriver.py step2 \
    -s DIGI,L1,DIGI2RAW,HLT:@fake2 \
    -n -1 \
    --mc \
    --python_filename digiraw-ttbar-2024.py \
    --conditions auto:phase1_2024_realistic \
    --datatier GEN-SIM-DIGI-RAW \
    --eventcontent FEVTDEBUGHLT \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --filein file:gensim-ttbar-2024.root \
    --fileout file:digiraw-ttbar-2024.root \
    --customise_commands="\
process.load('CommonTools.UtilAlgos.TFileService_cfi')"


cmsDriver.py step3 \
    -s RAW2DIGI,L1Reco,RECO,RECOSIM,VALIDATION:@standardValidationNoHLT,DQM:@standardDQMFakeHLT \
    -n -1 \
    --mc \
    --python_filename recosimdqm-ttbar-2024.py \
    --conditions auto:phase1_2024_realistic \
    --datatier GEN-SIM-RECO,DQMIO \
    --eventcontent RECOSIM,DQM \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --filein file:digiraw-ttbar-2024.root \
    --fileout file:recosim-ttbar-2024.root \
    --customise_commands="\
process.load('CommonTools.UtilAlgos.TFileService_cfi'); \
process.TFileService.fileName = cms.string('output.root')"

