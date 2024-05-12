#!/bin/bash

LAYOUT_NAME="net-tools"
LAYOUT_APP="Net-tools"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES net-tools
}

. "$(dirname "$0")/../template/install.sh"
