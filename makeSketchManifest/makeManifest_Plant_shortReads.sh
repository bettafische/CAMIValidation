#!/bin/bash
echo name,genome_filename,protein_filename > /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_shortReads_Sketch.csv
for i in /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/sampleDownload_shortReads/simulation_short_read/2019.09.27_13.59.10_sample_*/reads/anonymous_reads.fq.gz
do
  sample=$(basename "$(dirname "$(dirname "$i")")" | sed 's/.*sample_//')
  echo CAMIPlant_shortReads_$sample,$i,
done >> /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_plant/CAMI_Plant_shortReads_Sketch.csv