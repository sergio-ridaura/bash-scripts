#!/bin/bash

LAYOUT_NAME="edge"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  which microsoft-edge
}

# template
. "$(dirname "$0")/../template/path.sh"
