#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE() {
  echo "Nmap is commonly used to scan ports and discover hosts on a network, providing detailed information about the services running on those hosts."
}

LAYOUT_CODE_ES() {
  echo "Nmap se usa comúnmente para escanear puertos y descubrir hosts en una red, proporcionando información detallada sobre los servicios que se ejecutan en esos hosts."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
