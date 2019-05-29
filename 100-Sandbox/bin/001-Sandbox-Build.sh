#!/bin/sh
#replace /dckr/yournewname/
echo "[INFO] $0 switching working dir to script path"
cd "$(dirname "$0")"

echo "[INFO] Setting Variables"
SANDBOX_NAME=docker-sandbox
PATH_TO_SRC=/home/brandon/proj/dockr-sandbox
echo "[INFO] Refreshing Container Resources"
rm -rf ../resources/*
cp -r ../../src/* ../../100-Sandbox/resources

echo "[INFO] Removing old label and killing machine"
CONTAINER_ID=`docker ps | grep 'dckr-sandbox:latest' | awk '{print $1}'`
#create a clear error message if the container isn't running w/ default
CONTAINER_ID=${CONTAINER_ID:-no_container_found}
docker kill $CONTAINER_ID
docker rmi -f $SANDBOX_NAME

echo "[INFO] Building Container"
docker build --rm -t $SANDBOX_NAME ..

echo "[INFO] Testing Container, Expect to see 'success' on next line"
docker run -it --rm $SANDBOX_NAME /bin/sh -c 'echo success'

echo "[INFO] Cleanup"
rm -rf ../resources/*

echo "[INFO] $0 complete"
