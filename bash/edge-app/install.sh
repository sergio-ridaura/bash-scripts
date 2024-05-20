#!/bin/bash

LAYOUT_NAME="microsoft-edge-stable"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES curl apt-transport-https
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
  $IS_ROOT mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
  echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" | $IS_ROOT tee /etc/apt/sources.list.d/microsoft-edge.list
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES microsoft-edge-stable
}

# template
. "$(dirname "$0")/../template/install.sh"
