PLANT_SAMPLE_NUMBERS = list(range(21))
OUTPUT_LOCATION = "/group/ctbrowngrp4/2025-olivas-chillFilter/data"

rule all:
	input:
		expand(f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads/simulation_short_read/2019.09.27_13.59.10_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=PLANT_SAMPLE_NUMBERS),
		expand(f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT/simulation_nanosim/2020.01.23_15.51.11_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=PLANT_SAMPLE_NUMBERS),
		expand(f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio/simulation_pbsim/2019.11.04_11.02.31_sample_{{sample}}/reads/anonymous_reads.fq.gz", sample=PLANT_SAMPLE_NUMBERS),

rule plant_shortReads_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads/simulation_short_read/2019.09.27_13.59.10_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads"

rule plant_longReads_ONT_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT/simulation_nanosim/2020.01.23_15.51.11_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT"

rule plant_longReads_PacBio_unPack:
	input:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio/simulation_pbsim/2019.11.04_11.02.31_sample_{{sample}}/reads/anonymous_reads.fq.gz",
	shell:
		f"tar -zxvf {input} -C {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio"

rule plant_shortReads:
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/plant_associated/short_read/rhimgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_shortReads/"

rule plant_longReads_ONT:
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/plant_associated/long_read_nano/rhimgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_ONT/"

rule plant_longReads_PacBio:
	output:
		f"{OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio/rhimgCAMI2_sample_{{sample}}_reads.tar.gz"
	shell:
		f"wget https://frl.publisso.de/data/frl:6425521/plant_associated/long_read_pacbio/rhimgCAMI2_sample_{{wildcards.sample}}_reads.tar.gz -P {OUTPUT_LOCATION}/CAMI_plant/sampleDownload_longReads_PacBio/"

