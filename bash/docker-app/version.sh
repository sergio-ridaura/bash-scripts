#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  docker --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Docker version \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
