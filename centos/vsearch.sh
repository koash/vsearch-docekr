#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/vsearch-centos:0.2.1 \
  vsearch $@
