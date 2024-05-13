#!/bin/bash

LAYOUT_NAME="date"
LAYOUT_APP="date"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html
- Documentation       https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html
- Stack Overflow      https://stackoverflow.com/questions/tagged/date"
}

. "$(dirname "$0")/../template/links.sh"
