#!/usr/bin/env sh
set -e
set -x

# docker buildx create --name armbuilder
docker buildx use armbuilder
docker buildx build --push --platform linux/arm/v7,linux/arm/v8,linux/amd64 --tag bloodstalker/morty .
