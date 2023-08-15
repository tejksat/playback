#!/bin/sh

DIR="${BASH_SOURCE%/*}"
. "$DIR/shared.sh"

OPTIND=1
OPT_PORT=2222

while getopts "p:" opt; do
    case "$opt" in
    p)  OPT_PORT=$OPTARG
        ;;
    esac
done

CONTAINER_ID=$(docker run -d --publish 127.0.0.1:$OPT_PORT:22/tcp --security-opt=seccomp:unconfined $IMAGE_NAME:$IMAGE_TAG)

CONTAINER_HOME=/home/jb

echo $CONTAINER_ID > .container_id

docker cp ~/.ssh/id_rsa.pub $CONTAINER_ID:$CONTAINER_HOME/.ssh/authorized_keys

# fix the owner of authorized_keys
docker exec $CONTAINER_ID chown jb:jb $CONTAINER_HOME/.ssh/authorized_keys
