#!/bin/bash
#
# Build image using optional tag

SCRIPT_HOME="$( cd "$( dirname "$0" )" && pwd )"
IMAGE_NAME=$(basename $SCRIPT_HOME)

TAG=$1
#If $TAG is null set default value latest
: ${TAG:=latest}

docker build -t thomaswelton/$IMAGE_NAME:$TAG $SCRIPT_HOME
