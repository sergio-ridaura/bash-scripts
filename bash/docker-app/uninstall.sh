#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge docker
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
