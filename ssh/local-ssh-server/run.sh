#!/bin/bash

docker run -it --rm -p=2202:22 -l sshd.with.python my/sshd-with-python
