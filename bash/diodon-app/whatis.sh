#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  echo "Diodon is a lightweight clipboard manager for Linux written in Vala which aims to be the best integrated clipboard manager for the Gnome/GTK+ desktop."
}

LAYOUT_CODE_ES() {
  echo "Diodon es un administrador de portapapeles liviano para Linux escrito en Vala que apunta a ser el mejor administrador de portapapeles integrado para el escritorio Gnome/GTK+."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
