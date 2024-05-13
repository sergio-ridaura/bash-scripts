#!/bin/bash

LAYOUT_NAME="tmux"
LAYOUT_APP="Tmux"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://tmux.github.io/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES tmux
}

# template
. "$(dirname "$0")/../template/install.sh"
