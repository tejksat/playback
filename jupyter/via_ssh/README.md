# SSHd and Jupyter in Docker container

Follow these steps:
- Build Docker image with `./build.sh`
- Start SSH server with port binding to localhost:2222 (or a custom port) with `./run.sh [-p <custom_port>]`

    _Please note that run.sh requires ~/.ssh/id_rsa.pub to be available on the host machine._ 
- Start Jupyter server in the same container with `./exec.sh`
- Now you are ready:
  - to connect to SSH machine at root@localhost:2222 with your ~/.ssh/id_rsa
  - to port forward Jupyter to the host machine with the command `ssh -L 8888:localhost:8888 root@localhost -p 2222`
- When you are done stop the container with `./stop.sh`
