STRAIN_SAMPLE_NUMBERS = list(range(100))
OUTPUT_LOCATION = "/group/ctbrowngrp4/2025-olivas-chillFilter/data"

rule all:
	input:
		expand(f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads/short_read/2018.09.07_11.43.52_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=STRAIN_SAMPLE_NUMBERS),
		expand(f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads/long_read/2018.09.20_11.17.07_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=STRAIN_SAMPLE_NUMBERS),

rule strainMadness_shortReads_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads/strmgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads/short_read/2018.09.07_11.43.52_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads"

rule strainMadness_longReads_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads/strmgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads/long_read/2018.09.20_11.17.07_sample_{{sample}}/reads/anonymous_reads.fq.gz",

	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads"

rule strainMadness_shortReads:
	output:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads/strmgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/strain/short_read/strmgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_shortReads/"

rule strainMadness_longReads:
	output:
		f"{OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads/strmgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/strain/long_read/strmgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_strainMadness/sampleDownload_longReads/"

