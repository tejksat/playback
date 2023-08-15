#!/usr/bin/env bash

# docker run --rm -it --network=host -v ~/.ssh/config:/root/.ssh/config:ro -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent my/ubuntu-ssh-client:22.04 bash
# docker run --rm -it --network=host -v ~/.ssh/config:/root/.ssh/config:ro -v /var/folders/78/_m47j9nx0_q1qh5pv82ypcl40000gn/T//ssh-060bd90BUqSO/agent.92639:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent -e SSH_AGENT_PID=$SSH_AGENT_PID my/ubuntu-ssh-client:22.04 bash

docker run --rm -it --network=host -v ~/.ssh/config:/root/.ssh/config:ro -v /run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock -e SSH_AUTH_SOCK=/run/host-services/ssh-auth.sock -e SSH_AGENT_PID=$SSH_AGENT_PID my/ubuntu-ssh-client:22.04 bash