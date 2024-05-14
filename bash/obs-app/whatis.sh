#!/bin/bash

LAYOUT_NAME="obs"
LAYOUT_APP="OBS Studio"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://obsproject.com/"

LAYOUT_CODE() {
  echo "OBS Studio is a free and open source software designed for video recording and live broadcasts."
}

LAYOUT_CODE_ES() {
  echo "OBS Studio es un software gratuito y de código abierto diseñado para grabación de vídeo y transmisiones en vivo".
}

# template
. "$(dirname "$0")/../template/whatis.sh"
