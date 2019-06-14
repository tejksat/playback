FROM python:3.7

RUN pip install jupyter

RUN apt-get update && apt-get install --yes \
  openssh-server \
  ;

# Option `nodelay` for pam_unix.so significantly increases speed of
# some tests.
RUN ( \
    echo 'AcceptEnv LANG LC_*'; \
    echo 'PrintMotd no'; \
    echo 'PubkeyAuthentication yes'; \
    echo 'Subsystem sftp /usr/lib/openssh/sftp-server'; \
  ) > /sshd_config \
  && sed -i -e 's|\(pam_unix\.so.*\)$|\1 nodelay|' /etc/pam.d/common-auth \
  && mkdir /run/sshd \
  && yes pass | passwd

RUN mkdir -p /root/.ssh \
  && chmod g-rwx,o-rwx -R /root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]
