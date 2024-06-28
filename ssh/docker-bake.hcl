variable "UBUNTU_BASE_IMAGE" {
  default = "docker.io/library/ubuntu:22.04"
}

variable "UBUNTU_SSHD_IMAGE" {
  default = "ij/devenv/ubuntu-sshd:latest"
}

variable "UBUNTU_SSHD_DOCKER_IMAGE" {
  default = "ij/devenv/ubuntu-sshd-docker:latest"
}

target "ubuntu-sshd" {
  context = "./ubuntu-sshd"
  dockerfile = "Dockerfile"
  args = {
    UBUNTU_BASE_IMAGE = UBUNTU_BASE_IMAGE
  }
  tags = [ UBUNTU_SSHD_IMAGE ]
  # no-cache = true
}

target "ubuntu-sshd-docker" {
  context = "./ubuntu-sshd-docker"
  contexts = {
    ubuntu-sshd = "target:ubuntu-sshd"
  }
  dockerfile = "Dockerfile"
  args = {
    ubuntu-sshd = UBUNTU_SSHD_IMAGE
  }
  tags = [ UBUNTU_SSHD_DOCKER_IMAGE ]
  # no-cache = true
}