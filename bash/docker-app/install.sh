#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES apt-transport-https ca-certificates software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | $IS_ROOT gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | $IS_ROOT tee /etc/apt/sources.list.d/docker.list >/dev/null
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES docker-ce
  $IS_ROOT groupadd docker
  $IS_ROOT usermod -aG docker $USER
  $IS_ROOT chmod o+rw /var/run/docker.sock
}

# template
. "$(dirname "$0")/../template/install.sh"
