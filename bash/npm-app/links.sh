#!/bin/bash

SCRIPT_NAME="npm-app_links"
SCRIPT_DESCRIPTION="List of help links for Npm application."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_O" != true ]; then
  echo "\
- Official website    https://www.npmjs.com
- Documentation       https://docs.npmjs.com/
- Repository          https://github.com/npm/cli
- Wikipedia           https://en.wikipedia.org/wiki/npm
- Stack Overflow      https://stackoverflow.com/questions/tagged/npm"
fi
