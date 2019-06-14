#!/bin/sh

IMAGE_TAG=dev

CONTAINER_ID=$(docker run -d --rm --publish 127.0.0.1:2239:22/tcp intellij/jupyter-ssh:$IMAGE_TAG)

echo $CONTAINER_ID > .container_id

docker cp ~/.ssh/id_rsa.pub $CONTAINER_ID:/root/.ssh/authorized_keys
