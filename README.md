# vsearch-docker

Docker container for VSEARCH

## VSEARCH

[VSEARCH](https://github.com/torognes/vsearch) is versatile open-source tool for metagenomics

## Requirements
- [Docker](https://www.docker.com/)

## Installation

Please pull the latest docker image.

```
$ docker pull koash/vsearch
```

Alternatively, to build the docker image, do the following.

```
$ docker build github.com/koash/vsearch-docker
```

## Usage
```
$ ./vsearch.sh [options]
```
```
Example commands:

./vsearch.sh --allpairs_global FILENAME --id 0.5 --alnout FILENAME
./vsearch.sh --cluster_fast FILENAME --id 0.97 --centroids FILENAME
./vsearch.sh --cluster_size FILENAME --id 0.97 --centroids FILENAME
./vsearch.sh --cluster_smallmem FILENAME --usersort --id 0.97 --centroids FILENAME
./vsearch.sh --derep_fulllength FILENAME --output FILENAME
./vsearch.sh --derep_prefix FILENAME --output FILENAME
./vsearch.sh --fastq_chars FILENAME
./vsearch.sh --fastq_convert FILENAME --fastqout FILENAME --fastq_ascii 64
./vsearch.sh --fastq_eestats FILENAME --output FILENAME
./vsearch.sh --fastq_mergepairs FILENAME --reverse FILENAME --fastqout FILENAME
./vsearch.sh --fastq_stats FILENAME --log FILENAME
./vsearch.sh --fastx_filter FILENAME --fastaout FILENAME --fastq_trunclen 100
./vsearch.sh --fastx_mask FILENAME --fastaout FILENAME
./vsearch.sh --fastx_revcomp FILENAME --fastqout FILENAME
./vsearch.sh --fastx_subsample FILENAME --fastaout FILENAME --sample_pct 1
./vsearch.sh --rereplicate FILENAME --output FILENAME
./vsearch.sh --search_exact FILENAME --db FILENAME --alnout FILENAME
./vsearch.sh --shuffle FILENAME --output FILENAME
./vsearch.sh --sortbylength FILENAME --output FILENAME
./vsearch.sh --sortbysize FILENAME --output FILENAME
./vsearch.sh --uchime_denovo FILENAME --nonchimeras FILENAME
./vsearch.sh --uchime_ref FILENAME --db FILENAME --nonchimeras FILENAME
./vsearch.sh --usearch_global FILENAME --db FILENAME --id 0.97 --alnout FILENAME
```
