#!/bin/bash

LAYOUT_NAME="timedatectl"
LAYOUT_APP="timedatectl"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://systemd.io"

LAYOUT_CODE() {
  which timedatectl
}

. "$(dirname "$0")/../template/path.sh"
