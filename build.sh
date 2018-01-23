#!/bin/bash
set -o errexit

. ./build.properties

echo "Building image ($DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG)..."
docker build -t quay.io/alfresco/$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG .