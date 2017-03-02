#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/vsearch-centos:0.2.1 \
  vsearch $@
