#!/bin/bash

LAYOUT_NAME="docker-compose"
LAYOUT_APP="Docker Compose"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://docs.docker.com/compose/"

LAYOUT_CODE() {
  if command -v docker &>/dev/null; then
    $IS_ROOT apt install $ARG_YES curl
    $IS_ROOT curl -L https://github.com/docker/compose/releases/download/v2.4.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    $IS_ROOT chmod +x /usr/local/bin/docker-compose
  else
    ERROR_NOT_FOUND "Docker"
  fi
}

# template
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
. "$DEV_PATH/bash/template/install.sh"
