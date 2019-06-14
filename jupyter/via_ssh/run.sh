#!/bin/sh

OPTIND=1
OPT_PORT=2222

while getopts "p:" opt; do
    case "$opt" in
    p)  OPT_PORT=$OPTARG
        ;;
    esac
done

IMAGE_TAG=dev

CONTAINER_ID=$(docker run -d --rm --publish 127.0.0.1:$OPT_PORT:22/tcp intellij/jupyter-ssh:$IMAGE_TAG)

echo $CONTAINER_ID > .container_id

docker cp ~/.ssh/id_rsa.pub $CONTAINER_ID:/root/.ssh/authorized_keys

# fix the owner of authorized_keys
docker exec $CONTAINER_ID chown root:root /root/.ssh/authorized_keys
