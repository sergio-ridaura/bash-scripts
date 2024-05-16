#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  ssh -V
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'OpenSSL \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
