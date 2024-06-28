#!/bin/sh

IMAGE_TAG=dev

docker build --tag ij/devenv/jupyter-ssh:$IMAGE_TAG .
