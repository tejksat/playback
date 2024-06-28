#!/bin/bash

CONTAINER_ID=$(<.container_id)

docker exec -it $CONTAINER_ID /bin/bash
