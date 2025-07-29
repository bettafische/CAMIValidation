#!/bin/bash
echo name,genome_filename,protein_filename > /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_longReads_PacBio_Sketch.csv
for i in /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/sampleDownload_longReads_PacBio/simulation_pbsim/2019.11.04_11.02.31_sample_*/reads/anonymous_reads.fq.gz
do
  sample=$(basename "$(dirname "$(dirname "$i")")" | sed 's/.*sample_//')
  echo CAMIPlant_longReads_PacBio_$sample,$i,
done >> /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_longReads_PacBio_Sketch.csv