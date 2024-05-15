#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  $IS_ROOT apt-get install $ARG_YES apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | $IS_ROOT apt-key add -
  $IS_ROOT add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES docker-ce
  if [ "$(whoami)" != "root" ]; then
    $IS_ROOT usermod -aG docker $USER
  fi
}

# template
. "$(dirname "$0")/../template/install.sh"
