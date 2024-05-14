#!/bin/bash

LAYOUT_NAME="qbittorrent"
LAYOUT_APP="qBittorrent"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.qbittorrent.org/"

LAYOUT_CODE() {
  qbittorrent --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'qBittorrent v\K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
