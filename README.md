# vsearch-docker

Docker container for VSEARCH.

|Label|Name|Version|
|:-|:-|:-|
|Software|VSEARCH|2.4.0|
|Base images|CentOS|7.3.1611|
|Docker container|vsearch-docekr|0.1.0|

## VSEARCH
Versatile open-source tool for metagenomics
- [Software web site](https://github.com/torognes/vsearch)

## Requirements
- [Docker](https://www.docker.com/)

## Installation
```
$ ./build.sh [Tag of docker images]
```

## Usage
```
Example commands:

vsearch --allpairs_global FILENAME --id 0.5 --alnout FILENAME
vsearch --cluster_fast FILENAME --id 0.97 --centroids FILENAME
vsearch --cluster_size FILENAME --id 0.97 --centroids FILENAME
vsearch --cluster_smallmem FILENAME --usersort --id 0.97 --centroids FILENAME
vsearch --derep_fulllength FILENAME --output FILENAME
vsearch --derep_prefix FILENAME --output FILENAME
vsearch --fastq_chars FILENAME
vsearch --fastq_convert FILENAME --fastqout FILENAME --fastq_ascii 64
vsearch --fastq_eestats FILENAME --output FILENAME
vsearch --fastq_mergepairs FILENAME --reverse FILENAME --fastqout FILENAME
vsearch --fastq_stats FILENAME --log FILENAME
vsearch --fastx_filter FILENAME --fastaout FILENAME --fastq_trunclen 100
vsearch --fastx_mask FILENAME --fastaout FILENAME
vsearch --fastx_revcomp FILENAME --fastqout FILENAME
vsearch --fastx_subsample FILENAME --fastaout FILENAME --sample_pct 1
vsearch --rereplicate FILENAME --output FILENAME
vsearch --search_exact FILENAME --db FILENAME --alnout FILENAME
vsearch --shuffle FILENAME --output FILENAME
vsearch --sortbylength FILENAME --output FILENAME
vsearch --sortbysize FILENAME --output FILENAME
vsearch --uchime_denovo FILENAME --nonchimeras FILENAME
vsearch --uchime_ref FILENAME --db FILENAME --nonchimeras FILENAME
vsearch --usearch_global FILENAME --db FILENAME --id 0.97 --alnout FILENAME
```
