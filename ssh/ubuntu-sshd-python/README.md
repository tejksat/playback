# SSHd in Docker container

Follow these steps:
- Build Docker image with `./build.sh`
- Start SSH server with port binding to localhost:2222 (or a custom port) with `./run.sh [-p <custom_port>]`

    _Please note that run.sh requires ~/.ssh/id_rsa.pub to be available on the host machine._ 
- Now you are ready: to connect to SSH machine at root@localhost:2222 with your ~/.ssh/id_rsa
- When you are done stop the container with `./stop.sh`
