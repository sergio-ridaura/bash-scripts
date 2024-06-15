#!/bin/bash

LAYOUT_NAME="dosbox"
LAYOUT_APP="DOSBox"
LAYOUT_VERSION="24.06.15"
LAYOUT_SEE="https://www.dosbox.com/"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'DOSBox version \K\d+\.\d+\-\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
