#!/bin/bash

LAYOUT_NAME="qbittorrent"
LAYOUT_APP="qBittorrent"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.qbittorrent.org/"

LAYOUT_CODE() {
  echo "qBittorrent is an open source, cross-platform BitTorrent client. BitTorrent is a peer-to-peer (P2P) file transfer protocol used to download and share large files efficiently."
}

LAYOUT_CODE_ES() {
  echo "qBittorrent es un cliente BitTorrent multiplataforma de código abierto. BitTorrent es un protocolo de transferencia de archivos de igual a igual (P2P) que se utiliza para descargar y compartir archivos grandes de manera eficiente".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
