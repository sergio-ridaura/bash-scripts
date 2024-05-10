#!/bin/bash

SCRIPT_NAME="tmux-app_watis"
SCRIPT_DESCRIPTION="Get description of the Tmux application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Tmux."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Tmux es una herramienta de línea de comandos que permite a los usuarios interactuar con múltiples sesiones y ventanas en una sola terminal."
  else
    echo "Tmux is a command line tool that allows users to interact with multiple sessions and windows in a single terminal."
  fi
fi
