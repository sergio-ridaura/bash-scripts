#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  which docker
}

. "$(dirname "$0")/../template/path.sh"
