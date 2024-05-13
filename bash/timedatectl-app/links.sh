#!/bin/bash

LAYOUT_NAME="timedatectl"
LAYOUT_APP="timedatectl"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://systemd.io"

LAYOUT_CODE() {
  echo "\
- Official website    https://systemd.io
- Repository          https://github.com/systemd/systemd
- How To Geek         https://www.howtogeek.com/782032/how-to-use-the-timedatectl-command-on-linux/"
}

. "$(dirname "$0")/../template/links.sh"
