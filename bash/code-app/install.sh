#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.18"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  $IS_ROOT apt-get install $ARG_YES wget gpg apt-transport-https
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  $IS_ROOT install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
  echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | $IS_ROOT tee /etc/apt/sources.list.d/vscode.list >/dev/null
  rm -f packages.microsoft.gpg
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES code
}

# template
. "$(dirname "$0")/../template/install.sh"
