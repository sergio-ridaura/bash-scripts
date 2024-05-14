#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge ssh
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
