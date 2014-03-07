#!/bin/bash
#
# Pull docker image from remote registry

SCRIPT_HOME="$( cd "$( dirname "$0" )" && pwd )"
IMAGE_NAME=$(basename $SCRIPT_HOME)

docker pull thomaswelton/$IMAGE_NAME
