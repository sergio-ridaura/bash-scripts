#!/bin/bash

LAYOUT_NAME="date"
LAYOUT_APP="date"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

LAYOUT_CODE() {
  echo "Print or set system date and time. This application is part of GNU coreutils."
}

LAYOUT_CODE_ES() {
  echo "Imprima o configure la fecha y hora del sistema. Esta aplicación es parte de GNU coreutils."
}

. "$(dirname "$0")/../template/whatis.sh"
