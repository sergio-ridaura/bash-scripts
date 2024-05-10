#!/bin/bash

SCRIPT_NAME="vscode-app_install"
SCRIPT_DESCRIPTION="Visual Studio Code application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES software-properties-common apt-transport-https
  wget -O- https://packages.microsoft.com/keys/microsoft.asc | $IS_ROOT gpg --dearmor | $IS_ROOT tee /usr/share/keyrings/vscode.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | $IS_ROOT tee /etc/apt/sources.list.d/vscode.list"
  $IS_ROOT apt update
  $IS_ROOT apt install $ARG_YES code
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
