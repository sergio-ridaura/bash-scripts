#!/bin/bash

SCRIPT_NAME="vim-app_watis"
SCRIPT_DESCRIPTION="Get description of the Vim application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Vim."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="http://www.vim.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then

  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Vim es un editor de texto de código abierto y altamente configurable. Su nombre es un acrónimo de Vi mejorado, en referencia a su relación con el editor de texto Vi, que se desarrolló originalmente en la década de 1970".
  else
    echo "Vim is an open source, highly configurable text editor. Its name is an acronym for Vi Improved, referring to its relationship to the Vi text editor, which was originally developed in the 1970s."
  fi
fi
