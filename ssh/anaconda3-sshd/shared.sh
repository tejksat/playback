#!/bin/bash

PWD_DIR_NAME=${PWD##*/}
DIR="${BASH_SOURCE%/*}"

IMAGE_NAME=ij/devenv/$PWD_DIR_NAME
IMAGE_TAG=latest
