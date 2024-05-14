#!/bin/bash

LAYOUT_NAME="qbittorrent"
LAYOUT_APP="qBittorrent"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.qbittorrent.org/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES qbittorrent
}

# template
. "$(dirname "$0")/../template/install.sh"
