#!/bin/sh

docker buildx create --name armbuilder
docker buildx use armbuilder
https_proxy=socks5://[::1]:9993 docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --push -t bloodstalker/cointop . && \
  docker buildx imagetools inspect bloodstalker/cointop
