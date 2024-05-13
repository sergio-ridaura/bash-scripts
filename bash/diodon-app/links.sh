#!/bin/bash

LAYOUT_NAME="diodon"
LAYOUT_APP="Diodon"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://launchpad.net/diodon"

LAYOUT_CODE() {
  echo "\
- Official website    https://launchpad.net/diodon
- Repository          https://github.com/diodon-dev/diodon
- Wikipedia           https://en.wikipedia.org/wiki/Diodon_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/diodon"
}

. "$(dirname "$0")/../template/links.sh"
