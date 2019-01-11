FROM sickp/alpine-sshd:latest

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

RUN apk add --update \
    sudo \
  && rm -rf /var/cache/apk/* \
  && addgroup sudo

RUN echo -e "jetbrains\njetbrains" | adduser jetbrains \
  && adduser jetbrains sudo

RUN echo -e "foo\nfoo" | adduser foo

RUN echo -e "# Allow members of group sudo to execute any command\n%sudo\tALL=(ALL:ALL) ALL" >> /etc/sudoers

# RUN adduser jetbrains \
#   && echo -e "jetbrains\njetbrains\n" | passwd jetbrains

# COPY test_ssh_server_id_rsa.pub /home/jetbrains/.ssh/authorized_keys
# RUN chown jetbrains:jetbrains /home/jetbrains/.ssh/authorized_keys

# RUN echo -e "\nLogLevel DEBUG3" >> /etc/ssh/sshd_config
