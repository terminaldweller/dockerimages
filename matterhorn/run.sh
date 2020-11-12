#!/usr/bin/env sh
docker run --network="host" -it --privileged $1 /usr/sbin/init
# docker run --network="host" -it --entrypoint bash --privileged $1 /usr/sbin/init
