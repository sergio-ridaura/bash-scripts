#!/bin/bash

LAYOUT_NAME="fs-uae"
LAYOUT_APP="FS-UAE"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://fs-uae.net/"

LAYOUT_CODE() {
  echo "FS-UAE is an emulator for Amiga computers, which are a series of personal computers released by Commodore in the 1980s and early 1990s."
}

LAYOUT_CODE_ES() {
  echo "FS-UAE es un emulador de computadoras Amiga, que son una serie de computadoras personales lanzadas por Commodore en la década de 1980 y principios de la década de 1990."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
