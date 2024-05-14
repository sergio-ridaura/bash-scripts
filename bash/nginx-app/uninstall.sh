#!/bin/bash

LAYOUT_NAME="nginx"
LAYOUT_APP="Nginx"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nginx.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge nginx
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
