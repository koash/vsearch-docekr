#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/vsearch-alpine:0.1.0 \
  vsearch $@
