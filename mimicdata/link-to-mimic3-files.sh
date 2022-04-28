#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Create symlinks to required MIMIC 3 raw data (CSV) files"
    echo "usage: ./link-to-mimic3-files.sh mimic3_sourcedir"
    exit -1
fi
echo "Creating symlinks to MIMIC3 data in $1"
ln -s $1/D_ICD_DIAGNOSES.csv D_ICD_DIAGNOSES.csv
ln -s $1/D_ICD_PROCEDURES.csv D_ICD_PROCEDURES.csv
ln -s $1/NOTEEVENTS.csv mimic3/NOTEEVENTS.csv
ln -s $1/DIAGNOSES_ICD.csv mimic3/DIAGNOSES_ICD.csv
ln -s $1/D_ICD_PROCEDURES.csv mimic3/D_ICD_PROCEDURES.csv
echo "...success"
