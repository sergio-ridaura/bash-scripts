#!/bin/bash

SCRIPT_NAME="ubuntu_restricted-extras_install"
SCRIPT_DESCRIPTION="Allows non-free tools in Ubuntu."
SCRIPT_DESCRIPTION_ES="Permite herramientas no libres en Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://askubuntu.com/questions/56446/how-do-i-install-the-ubuntu-restricted-extras-package"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES ubuntu-restricted-extras
}

# install
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    CODE &>/dev/null
  else
    CODE
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "install ubuntu-restricted-extras"
  fi
fi
