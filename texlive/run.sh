#!/bin/sh

docker build -t zharf_docs .
docker run --volume /home/devi/zharf/docs/documentations.git/feature-init/:/zharf -t zharf_docs
