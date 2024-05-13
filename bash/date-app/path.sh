#!/bin/bash

LAYOUT_NAME="date"
LAYOUT_APP="date"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

LAYOUT_CODE() {
  which date
}

. "$(dirname "$0")/../template/path.sh"
