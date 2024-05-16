#!/bin/bash

LAYOUT_NAME="microsoft-edge-stable"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE_SHORT() {
  echo $(LAYOUT_CODE 2>&1 | grep -oP 'Microsoft Edge \K\d+\.\d+\.\d+\.\d+')
}

# template
. "$(dirname "$0")/../template/version.sh"
