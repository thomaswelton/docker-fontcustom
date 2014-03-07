#!/bin/bash
#
# Push docker image to remote registry

SCRIPT_HOME="$( cd "$( dirname "$0" )" && pwd )"
IMAGE_NAME=$(basename $SCRIPT_HOME)

docker push thomaswelton/$IMAGE_NAME
