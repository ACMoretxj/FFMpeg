#!/usr/bin/env bash

IMAGE_NAME="rucer/ffmpeg:0.1.1"
CONTAINER_NAME="ffmpeg"

docker rm -f ${CONTAINER_NAME}
docker run -d \
    --name ${CONTAINER_NAME} \
    --hostname ffmpeg \
    --restart unless-stopped \
    -v ${PWD}/data:/root/share \
    ${IMAGE_NAME} \
    tail -f /dev/null
