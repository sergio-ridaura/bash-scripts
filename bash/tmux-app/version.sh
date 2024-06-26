#!/bin/bash

LAYOUT_NAME="tmux"
LAYOUT_APP="Tmux"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://tmux.github.io/"

LAYOUT_CODE() {
  tmux -V
}

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'tmux \K\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
