#!/bin/bash

CONTAINER_ID=$(<.container_id)

docker exec -it $CONTAINER_ID jupyter notebook --ip=127.0.0.1 --allow-root
