#!/bin/bash

LAYOUT_NAME="telegram"
LAYOUT_APP="Telegram"
LAYOUT_VERSION="24.06.08"
LAYOUT_SEE="https://telegram.org/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Telegram \K\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
