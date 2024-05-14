#!/bin/bash

LAYOUT_NAME="nmap"
LAYOUT_APP="Nmap"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://nmap.org/"

LAYOUT_CODE() {
  echo "\
- Official website    http://nmap.org/
- Repository          https://github.com/nmap/nmap.git
- Wikipedia           https://en.wikipedia.org/wiki/nmap
- Stack Overflow      https://stackoverflow.com/questions/tagged/nmap"
}

# template
. "$(dirname "$0")/../template/links.sh"
