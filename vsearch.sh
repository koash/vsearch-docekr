#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/vsearch:0.1.0 \
  vsearch $@
