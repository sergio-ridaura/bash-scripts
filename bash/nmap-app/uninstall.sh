#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge nmap
}

# template
. "$(dirname "$0")/../template/uninstall.sh"
