#!/bin/bash

# -N testpassphrase
ssh-keygen -t rsa -b 4096 -C "Key for test SSH server" -f ./test_ssh_server_id_rsa -N ''
