#!/bin/sh

IMAGE_TAG=dev

docker build --tag intellij/jupyter-ssh:$IMAGE_TAG .
