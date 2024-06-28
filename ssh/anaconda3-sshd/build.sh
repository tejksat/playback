#!/bin/sh

DIR="${BASH_SOURCE%/*}"
. "$DIR/shared.sh"

docker build --tag $IMAGE_NAME:$IMAGE_TAG .
