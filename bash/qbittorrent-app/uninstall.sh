#!/bin/bash

LAYOUT_NAME="qbittorrent"
LAYOUT_APP="qBittorrent"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.qbittorrent.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge qbittorrent
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
