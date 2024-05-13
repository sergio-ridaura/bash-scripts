#!/bin/bash

LAYOUT_NAME="vim"
LAYOUT_APP="Vim"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="http://www.vim.org/"

LAYOUT_CODE() {
  echo "Vim is an open source, highly configurable text editor. Its name is an acronym for Vi Improved, referring to its relationship to the Vi text editor, which was originally developed in the 1970s."
}

LAYOUT_CODE_ES() {
  echo "Vim es un editor de texto de código abierto y altamente configurable. Su nombre es un acrónimo de Vi mejorado, en referencia a su relación con el editor de texto Vi, que se desarrolló originalmente en la década de 1970".
}

. "$(dirname "$0")/../template/whatis.sh"
