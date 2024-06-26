#!/bin/bash

LAYOUT_NAME="date"
LAYOUT_APP="date"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP '(?<=date \(GNU coreutils\) )[^ ]+')
}

# template
. "$(dirname "$0")/../template/version.sh"
