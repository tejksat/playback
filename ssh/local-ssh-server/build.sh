#!/bin/bash

ssh-keygen -t rsa -b 4096 -N testpassphrase -C "Key for test SSH server" -f ./test_ssh_server_id_rsa

docker build -t my/sshd-with-python:latest .
