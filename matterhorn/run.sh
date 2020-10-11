#!/usr/bin/env sh
docker run --network="host" -it --entrypoint bash $1
