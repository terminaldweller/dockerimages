#!/usr/bin/env sh
docker run -p 9002:9000 -it --entrypoint zsh $1
