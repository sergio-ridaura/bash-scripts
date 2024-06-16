#!/bin/bash

LAYOUT_NAME="jlha"
LAYOUT_APP="LHA"
LAYOUT_VERSION="24.06.16"
LAYOUT_SEE="https://en.wikipedia.org/wiki/LHA_(file_format)"

LAYOUT_CODE() {
  echo "\
- Wikipedia           https://en.wikipedia.org/wiki/LHA_(file_format)
- Stack Overflow      https://stackoverflow.com/questions/tagged/lha"
}

# template
. "$(dirname "$0")/../template/links.sh"
