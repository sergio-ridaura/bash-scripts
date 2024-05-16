#!/bin/bash

LAYOUT_NAME="nginx"
LAYOUT_APP="Nginx"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://nginx.org/"

LAYOUT_CODE() {
  nginx -v
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'nginx/\K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
