#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE() {
  nmap --version
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Nmap \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
