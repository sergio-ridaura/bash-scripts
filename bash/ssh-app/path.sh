#!/bin/bash

LAYOUT_NAME="ssh"
LAYOUT_APP="SSH"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.openssh.com/"

LAYOUT_CODE() {
  which ssh
}

# template
. "$(dirname "$0")/../template/path.sh"