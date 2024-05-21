#!/bin/bash

LAYOUT_NAME="fs-uae"
LAYOUT_APP="FS-UAE"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://fs-uae.net/"

LAYOUT_CODE() {
  echo "\
- Official website    https://fs-uae.net/
- Documentation       https://fs-uae.net/docs
- Wikipedia           https://en.wikipedia.org/wiki/UAE_(emulator)
- Stack Overflow      https://stackoverflow.com/questions/tagged/fs-uae"
}

# template
. "$(dirname "$0")/../template/links.sh"
