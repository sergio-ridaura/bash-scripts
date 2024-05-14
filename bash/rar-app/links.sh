#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.rarlab.com/
- Wikipedia           https://en.wikipedia.org/wiki/RAR_(file_format)
- Stack Overflow      https://stackoverflow.com/questions/tagged/rar"
}

# template
. "$(dirname "$0")/../template/links.sh"
