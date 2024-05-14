#!/bin/bash

LAYOUT_NAME="edge"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  echo "Microsoft Edge es un navegador web desarrollado por Microsoft. Fue lanzado en 2015 como el sucesor de Internet Explorer y está diseñado para ser más rápido, seguro y compatible con los estándares web modernos".
}

LAYOUT_CODE_ES() {
  echo "Microsoft Edge is a web browser developed by Microsoft. It was released in 2015 as the Internet Explorer successor and is designed to be faster, safe and compatible with modern web standards."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
