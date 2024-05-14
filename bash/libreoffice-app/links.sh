#!/bin/bash

LAYOUT_NAME="libreoffice"
LAYOUT_APP="LibreOffice"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://libreoffice.org/"

LAYOUT_CODE() {
  echo "\
- Official website    https://es.libreoffice.org/
- Repository          git://git.libreoffice.org/core
- Stack Overflow      https://stackoverflow.com/questions/tagged/libreoffice"
}

# template
. "$(dirname "$0")/../template/links.sh"
