FROM sickp/alpine-sshd:latest

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

COPY test_ssh_server_id_rsa.pub /root/.ssh/authorized_keys
