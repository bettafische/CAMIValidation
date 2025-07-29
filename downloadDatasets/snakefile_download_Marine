MARINE_SAMPLE_NUMBERS = list(range(10))
OUTPUT_LOCATION = "/group/ctbrowngrp4/2025-olivas-chillFilter/data"

rule all:
	input:
		expand(f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads/simulation_short_read/2018.08.15_09.49.32_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=MARINE_SAMPLE_NUMBERS),
		expand(f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads/simulation_long_read/2018.08.08_16.35.17_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=MARINE_SAMPLE_NUMBERS),

rule marine_shortReads_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads/marmgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads/simulation_short_read/2018.08.15_09.49.32_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads"

rule marine_longReads_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads/marmgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads/simulation_long_read/2018.08.08_16.35.17_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads"

rule marine_shortReads:
	output:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads/marmgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/marine/short_read/marmgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_marine/sampleDownload_shortReads/"

rule marine_longReads:
	output:
		f"{OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads/marmgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/marine/long_read/marmgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_marine/sampleDownload_longReads/"

