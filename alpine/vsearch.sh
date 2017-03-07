#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/vsearch-alpine:0.1.1 \
  vsearch $@
