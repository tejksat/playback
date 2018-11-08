# OpenSSH server in Docker container with Python
- `./build.sh` — generates new RSA key pair and builds the Docker image with OpenSSH server and Python installed.
  
  This script creates _test_ssh_server_id_rsa_ (with the passphrase _testpassphrase_) and _test_ssh_server_id_rsa.pub_ in the same directory and adds _test_ssh_server_id_rsa.pub_ to _/root/.ssh/authorized_keys_ to the Docker image.
- `./run.sh` — runs OpenSSH server as a foreground process.
  
  The server will be available on the host machine at *localhost:2202*.
  
  One could connect to the server as root using generated _test_ssh_server_id_rsa_ key with the passphrase _testpassphrase_.
  
  Use <kbd>Ctrl</kbd> + <kbd>P</kbd> + <kbd>Ctrl</kbd> + <kbd>Q</kbd> to detach from the container (the server will continue to run in the background).
- `./stop.sh` — stops the server started with `./run.sh`.
