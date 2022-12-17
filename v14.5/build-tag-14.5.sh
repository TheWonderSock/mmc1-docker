#!/bin/zsh
set -x
docker build -t mmc1-minecraft:14.5 . &&
docker tag mmc1-minecraft:14.5 wrwalker427/mmc1-minecraft:14.5 