#!/bin/bash

for dir in dqm/* ; do
    name=$(basename ${dir})
    echo ${name}
    #mv ${dir}/DQM*.root dqm/DQM-${name}.root
    #rm -r ${dir}
done