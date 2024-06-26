#!/bin/bash

LAYOUT_NAME="ifconfig"
LAYOUT_APP="ifconfig"
LAYOUT_VERSION="24.05.16"
LAYOUT_SEE="https://sourceforge.net/projects/net-tools/"

LAYOUT_CODE() {
  echo "\
- Official website    http://www.net-tools.org/
- Repository          https://github.com/ecki/net-tools
- Wikipedia           https://en.wikipedia.org/wiki/Ifconfig
- Stack Overflow      https://stackoverflow.com/questions/tagged/net-tools"
}

# template
. "$(dirname "$0")/../template/links.sh"
