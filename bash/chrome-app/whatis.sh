#!/bin/bash

LAYOUT_NAME="google-chrome"
LAYOUT_APP="Google Chrome"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.google.com/chrome/"

LAYOUT_CODE() {
  echo "Google Chrome is a web browser developed by Google. It is one of the most popular and widely used browsers worldwide."
}

LAYOUT_CODE_ES() {
  echo "Google Chrome es un navegador web desarrollado por Google. Es uno de los navegadores más populares y utilizados a nivel mundial."
}

. "$(dirname "$0")/../template/whatis.sh"
