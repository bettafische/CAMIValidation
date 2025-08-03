#!/bin/bash
echo name,genome_filename,protein_filename > /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_longReads_ONT_Sketch.csv
for i in /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/sampleDownload_longReads_ONT/simulation_nanosim/2020.01.23_15.51.11_sample_*/reads/anonymous_reads.fq.gz
do
  sample=$(basename "$(dirname "$(dirname "$i")")" | sed 's/.*sample_//')
  echo CAMIPlant_longReads_ONT_$sample,$i,
done >> /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_longReads_ONT_Sketch.csv