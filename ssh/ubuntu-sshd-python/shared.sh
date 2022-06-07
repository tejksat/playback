#!/bin/bash

PWD_DIR_NAME=${PWD##*/}
DIR="${BASH_SOURCE%/*}"

IMAGE_NAME=intellij/$PWD_DIR_NAME
IMAGE_TAG=latest
