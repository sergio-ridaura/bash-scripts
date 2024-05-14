#!/bin/bash

LAYOUT_NAME="tmux"
LAYOUT_APP="Tmux"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://tmux.github.io/"

LAYOUT_CODE() {
  echo "\
- Official website    https://tmux.github.io/
- Repository          https://github.com/tmux/tmux
- Wikipedia           https://en.wikipedia.org/wiki/tmux
- Stack Overflow      https://stackoverflow.com/questions/tagged/tmux"
}

# template
. "$(dirname "$0")/../template/links.sh"
