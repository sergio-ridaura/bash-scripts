#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES ssh
}

# template
. "$(dirname "$0")/../template/install.sh"
