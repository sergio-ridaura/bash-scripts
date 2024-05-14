#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES nmap
}

# template
. "$(dirname "$0")/../template/install.sh"
