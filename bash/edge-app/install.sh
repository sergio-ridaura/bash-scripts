#!/bin/bash

LAYOUT_NAME="microsoft-edge-stable"
LAYOUT_APP="Microsoft Edge"
LAYOUT_VERSION="24.05.15"
LAYOUT_SEE="https://www.microsoft.com/edge"

LAYOUT_CODE() {
  if ! command -v $LAYOUT_NAME &>/dev/null; then
    $IS_ROOT apt install $ARG_YES software-properties-common apt-transport-https curl ca-certificates
    curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | $IS_ROOT gpg --dearmor | $IS_ROOT tee /usr/share/keyrings/microsoft-edge.gpg >/dev/null
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | $IS_ROOT tee /etc/apt/sources.list.d/microsoft-edge.list
    $IS_ROOT rm packages.microsoft.gpg
    $IS_ROOT apt update
    $IS_ROOT apt install $ARG_YES microsoft-edge-stable
  else
    echo $LAYOUT_APP is already
  fi
}

# template
. "$(dirname "$0")/../template/install.sh"
