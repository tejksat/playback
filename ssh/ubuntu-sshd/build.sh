#!/bin/sh

IMAGE_TAG=latest

docker build --tag ij/devenv/ubuntu-sshd:$IMAGE_TAG .
