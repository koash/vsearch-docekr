#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/vsearch:0.2.0 \
  vsearch $@
