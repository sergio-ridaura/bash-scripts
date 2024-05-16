#!/bin/bash

LAYOUT_NAME="docker-compose"
LAYOUT_APP="Docker Compose"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://docs.docker.com/compose/"

LAYOUT_CODE() {
  docker compose version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Docker Compose version v\K\d+\.\d+\.\d+')
}

# template
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
. "$DEV_PATH/bash/template/version.sh"
