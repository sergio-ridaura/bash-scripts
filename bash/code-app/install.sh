#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES software-properties-common apt-transport-https wget apt-utils
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  $IS_ROOT install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  $IS_ROOT sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  $IS_ROOT apt update
  $IS_ROOT apt install code
}

# template
. "$(dirname "$0")/../template/install.sh"
