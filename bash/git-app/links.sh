#!/bin/bash

LAYOUT_NAME="git"
LAYOUT_APP="Git"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://git-scm.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://git-scm.com/
- Documentation       https://git-scm.com/doc
- Repository          https://git.kernel.org/pub/scm/git/git.git
- Wikipedia           https://en.wikipedia.org/wiki/git
- Stack Overflow      https://stackoverflow.com/questions/tagged/git"
}

# template
. "$(dirname "$0")/../template/links.sh"
