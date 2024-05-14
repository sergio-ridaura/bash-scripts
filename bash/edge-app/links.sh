#!/bin/bash

LAYOUT_NAME="edge"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.microsoft.com/edge
- Documentation       https://www.microsoft.com/edge
- Wikipedia           https://en.wikipedia.org/wiki/Microsoft_Edge
- Stack Overflow      https://stackoverflow.com/questions/tagged/edge"
}

# template
. "$(dirname "$0")/../template/links.sh"
