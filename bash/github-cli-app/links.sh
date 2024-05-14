#!/bin/bash

LAYOUT_NAME="github-cli"
LAYOUT_APP="GitHub CLI"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://cli.github.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://cli.github.com/
- Documentation       https://github.com/cli/cli/tree/trunk/docs
- Repository          https://github.com/cli/cli
- Wikipedia           https://en.wikipedia.org/wiki/GitHub
- Stack Overflow      https://stackoverflow.com/questions/tagged/github"
}

# template
. "$(dirname "$0")/../template/links.sh"
