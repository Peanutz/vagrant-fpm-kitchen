#!/bin/bash -l
#$ -S /bin/bash
#$ -N $2
cd /vagrant &&  \
bundle install  &&  \
rake build[$1]
