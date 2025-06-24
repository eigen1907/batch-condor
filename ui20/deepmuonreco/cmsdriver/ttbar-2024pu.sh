nEvents=1000
cmsDriver.py TTbar_14TeV_TuneCP5_cfi \
    -s GEN,SIM \
    -n ${nEvents} \
    --mc \
    --python_filename gensim-ttbar-2024.py \
    --conditions auto:phase1_2024_realistic \
    --beamspot DBrealistic \
    --datatier GEN-SIM \
    --eventcontent RAWSIM \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --fileout file:gensim-ttbar-2024.root

cmsDriver.py MinBias_14TeV_pythia8_TuneCP5_cfi \
    -s GEN,SIM \
    -n ${nEvents} \
    --mc \
    --python_filename gensim-minbias-2024.py \
    --conditions auto:phase1_2024_realistic \
    --beamspot DBrealistic \
    --datatier GEN-SIM \
    --eventcontent RAWSIM \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --fileout file:gensim-minbias-2024.root

cmsDriver.py step1 \
    -s GEN,SIM,DIGI \
    -n ${nEvents} \
    --mc \
    --evt_type SingleNuE10_cfi \
    --python_filename premix-2024.py \
    --conditions auto:phase1_2024_realistic \
    --beamspot DBrealistic \
    --datatier PREMIX \
    --eventcontent PREMIX \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --procModifiers premix_stage1 \
    --pileup 2024_25ns_RunIII2024Summer24_PoissonOOTPU \
    --pileup_input file:gensim-minbias-2024.root \
    --fileout file:premix-2024.root

cmsDriver.py \
    -s DIGI,DATAMIX,L1,DIGI2RAW,HLT:@fake2 \
    -n -1 \
    --mc \
    --python_filename digiraw-ttbar-2024pu.py \
    --conditions auto:phase1_2024_realistic \
    --beamspot DBrealistic \
    --datatier GEN-SIM-DIGI-RAW \
    --eventcontent FEVTDEBUGHLT \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --procModifiers premix_stage2 \
    --datamix PreMix \
    --pileup_input file:premix-2024.root \
    --filein file:gensim-ttbar-2024.root \
    --fileout file:digiraw-ttbar-2024pu.root

cmsDriver.py \
    -s RAW2DIGI,L1Reco,RECO,RECOSIM,VALIDATION:@standardValidationNoHLT,DQM:@standardDQMFakeHLT \
    -n -1 \
    --mc \
    --python_filename recosimdqm-ttbar-2024pu.py \
    --conditions auto:phase1_2024_realistic \
    --datatier GEN-SIM-RECO,DQMIO \
    --eventcontent RECOSIM,DQM \
    --geometry DD4hepExtended2024 \
    --era Run3_2024 \
    --filein file:digiraw-ttbar-2024pu.root \
    --fileout file:recosim-ttbar-2024pu.root \
    --customise_commands="\
process.mix.playback=False; \
process.load('CommonTools.UtilAlgos.TFileService_cfi'); \
process.TFileService.fileName = cms.string('output.root')"
