#!/usr/bin/env bash

docker build . -t build-image -f Dockerfile
docker create --name build-container build-image
docker cp build-container:./app/out ./out
docker rm -fv build-container