#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.06.05"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  $IS_ROOT apt-get install $ARG_YES ca-certificates curl
  $IS_ROOT install -m 0755 -d /etc/apt/keyrings
  $IS_ROOT curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  $IS_ROOT chmod a+r /etc/apt/keyrings/docker.asc
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" |
    $IS_ROOT tee /etc/apt/sources.list.d/docker.list >/dev/null
  $IS_ROOT apt-get update
  $IS_ROOT apt-get install $ARG_YES docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  if [ "$(whoami)" != "root" ]; then
    $IS_ROOT usermod -aG docker $USER
  fi
}

# template
. "$(dirname "$0")/../template/install.sh"
