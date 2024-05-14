#!/bin/bash

LAYOUT_NAME="tmux"
LAYOUT_APP="Tmux"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://tmux.github.io/"

LAYOUT_CODE() {
  echo "Tmux is a command line tool that allows users to interact with multiple sessions and windows in a single terminal."
}

LAYOUT_CODE_ES() {
  echo "Tmux es una herramienta de línea de comandos que permite a los usuarios interactuar con múltiples sesiones y ventanas en una sola terminal."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
