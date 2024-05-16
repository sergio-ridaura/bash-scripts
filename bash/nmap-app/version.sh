#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Nmap version \K\d+\.\d+(\.\d+)?')
}

# template
. "$(dirname "$0")/../template/version.sh"
