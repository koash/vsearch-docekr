#!/bin/sh
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/vsearch \
  vsearch $@
