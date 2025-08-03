#!/bin/bash
echo name,genome_filename,protein_filename > /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_marine/CAMI_Marine_shortReads_Sketch.csv
for i in /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_marine/sampleDownload_shortReads/simulation_short_read/2018.08.15_09.49.32_sample_*/reads/anonymous_reads.fq.gz
do
  sample=$(basename "$(dirname "$(dirname "$i")")" | sed 's/.*sample_//')
  echo CAMIMarine_shortReads_$sample,$i,
done >> /group/ctbrowngrp4/2025-olivas-chillFilter/data/CAMI_marine/CAMI_Marine_shortReads_Sketch.csv