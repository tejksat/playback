#!/bin/sh

IMAGE_TAG=latest

docker build --tag intellij/ubuntu-sshd:$IMAGE_TAG .
