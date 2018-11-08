#!/bin/bash

docker stop $(docker ps -q -f label=sshd.with.python)
