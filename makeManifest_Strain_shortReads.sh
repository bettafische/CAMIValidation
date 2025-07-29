#!/bin/bash
echo name,genome_filename,protein_filename > /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_strainMadness/CAMI_StrainMadness_shortReads_Sketch.csv
for i in /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_strainMadness/sampleDownload_shortReads/short_read/2018.09.07_11.43.52_sample_*/reads/anonymous_reads.fq.gz
do
  sample=$(basename "$(dirname "$(dirname "$i")")" | sed 's/.*sample_//')
  echo CAMIStrain_shortReads_$sample,$i,
done >> /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_strainMadness/CAMI_StrainMadness_shortReads_Sketch.csv
