cmsDriver.py TTbar_14TeV_TuneCP5_cfi \
             -s GEN,SIM \
             -n 10 \
             --conditions auto:phase2_realistic_T33 \
             --beamspot DBrealisticHLLHC \
             --datatier GEN-SIM \
             --eventcontent FEVTDEBUG \
             --geometry ExtendedRun4D121 \
             --era Phase2C22I13M9 \
             --relval 9000,100 \
             --fileout file:step1.root

cmsDriver.py step2 \
             -s DIGI:pdigi_valid,L1TrackTrigger,L1,L1P2GT,DIGI2RAW,HLT:@relvalRun4 \
             --conditions auto:phase2_realistic_T33 \
             --datatier GEN-SIM-DIGI-RAW \
             -n 10 \
             --eventcontent FEVTDEBUGHLT \
             --geometry ExtendedRun4D121 \
             --era Phase2C22I13M9 \
             --filein  file:step1.root \
             --fileout file:step2.root

cmsDriver.py step3 \
             -s RAW2DIGI,RECO,RECOSIM,PAT,VALIDATION:@phase2Validation+@miniAODValidation,DQM:@phase2+@miniAODDQM \
             --conditions auto:phase2_realistic_T33 \
             --datatier GEN-SIM-RECO,MINIAODSIM,DQMIO \
             -n 10 \
             --eventcontent FEVTDEBUGHLT,MINIAODSIM,DQM \
             --geometry ExtendedRun4D121 \
             --era Phase2C22I13M9 \
             --filein  file:step2.root\
             --fileout file:step3.root

cmsDriver.py step4 \
             -s HARVESTING:@phase2Validation+@phase2+@miniAODValidation+@miniAODDQM \
             --conditions auto:phase2_realistic_T33 \
             --mc \
             --geometry ExtendedRun4D121 \
             --scenario pp \
             --filetype DQM \
             --era Phase2C22I13M9 \
             -n 100 \
             --filein file:step3_inDQM.root \
             --fileout file:step4.root

cmsDriver.py step5 \
             -s ALCA:SiPixelCalSingleMuonLoose+SiPixelCalSingleMuonTight+TkAlMuonIsolated+TkAlMinBias+MuAlOverlaps+EcalESAlign+TkAlZMuMu+TkAlDiMuonAndVertex+HcalCalHBHEMuonProducerFilter+TkAlUpsilonMuMu+TkAlJpsiMuMu \
             --conditions auto:phase2_realistic_T33 \
             --datatier ALCARECO \
             -n 10 \
             --eventcontent ALCARECO \
             --geometry ExtendedRun4D121 \
             --era Phase2C22I13M9 --filein file:step3.root --fileout file:step5.root  > step5_TTbar_14TeV+Run4D121.log  2>&1
 
