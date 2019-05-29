#!/bin/sh
SANDBOX_NAME=docker-sandbox
docker run -ti --rm -p58000:8000 \
-v /home/brandon/proj/$SANDBOX_NAME/src:/home/sandbox/src \
$SANDBOX_NAME:latest
