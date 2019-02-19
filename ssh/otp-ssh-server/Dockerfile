FROM ubuntu

RUN apt update
RUN apt install --assume-yes openssh-server
RUN apt install --assume-yes libpam-google-authenticator

RUN echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd
RUN sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
RUN echo "AuthenticationMethods publickey,keyboard-interactive" >> /etc/ssh/sshd_config
RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
RUN sed -i 's/@include common-auth/#@include common-auth/g' /etc/pam.d/sshd

RUN mkdir /var/run/sshd

COPY test_id_rsa.pub /root/.ssh/authorized_keys

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

RUN google-authenticator --time-based --force --disallow-reuse --window-size=17 --no-rate-limit