#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  $IS_ROOT docker stop $($IS_ROOT docker ps -aq)
  $IS_ROOT docker system prune -a --volumes
  $IS_ROOT apt-get purge docker-ce docker-ce-cli containerd.io
  $IS_ROOT rm -rf /var/lib/docker
  $IS_ROOT rm -rf /var/lib/containerd
  $IS_ROOT apt-get autoremove -y --purge docker-ce docker-ce-cli containerd.io
  $IS_ROOT add-apt-repository --remove "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
