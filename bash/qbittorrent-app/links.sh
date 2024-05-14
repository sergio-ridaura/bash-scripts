#!/bin/bash

LAYOUT_NAME="qbittorrent"
LAYOUT_APP="qBittorrent"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.qbittorrent.org/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.qbittorrent.org/
- Documentation       https://github.com/qbittorrent/qBittorrent/wiki/
- Repository          https://github.com/qbittorrent/qBittorrent
- Wikipedia           https://en.wikipedia.org/wiki/QBittorrent
- Stack Overflow      https://stackoverflow.com/questions/tagged/qbittorrent"
}

# template
. "$(dirname "$0")/../template/links.sh"
