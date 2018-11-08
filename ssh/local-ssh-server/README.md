# OpenSSH server in Docker container with Python
- `./build.sh` — generates new RSA key pair and builds the Docker image with OpenSSH server and Python installed.
- `./run.sh` — runs OpenSSH server as a foreground process. The server will be available on the host machine at *localhost:2202*. Use <kbd>Ctrl</kbd> + <kbd>P</kbd> + <kbd>Ctrl</kbd> + <kbd>Q</kbd> to detach from the container (the server will continue to run in the background).
- `./stop.sh` — stops the server started with `./run.sh`.
