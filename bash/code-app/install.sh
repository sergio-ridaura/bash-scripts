#!/bin/bash

LAYOUT_NAME="code"
LAYOUT_APP="Visual Studio Code"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://code.visualstudio.com/"

LAYOUT_CODE() {
  $IS_ROOT apt install $ARG_YES software-properties-common apt-transport-https
  wget -O- https://packages.microsoft.com/keys/microsoft.asc | $IS_ROOT gpg --dearmor | $IS_ROOT tee /usr/share/keyrings/vscode.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | $IS_ROOT tee /etc/apt/sources.list.d/vscode.list"
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES code
}

# template
. "$(dirname "$0")/../template/install.sh"
