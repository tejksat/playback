#!/bin/bash

CONTAINER_ID=$(<.container_id)

docker stop $CONTAINER_ID
