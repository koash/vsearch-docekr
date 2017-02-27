#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/vsearch:0.1.12 \
  vsearch $@
