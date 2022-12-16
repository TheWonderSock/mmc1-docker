#!/bin/zsh
set -x
docker buildx build --platform=linux/amd64 -t mmc1-minecraft:14.5 . &&
docker tag mmc1-minecraft:14.5 wrwalker427/mmc1-minecraft:14.5 &&
docker push wrwalker427/mmc1-minecraft:14.5
