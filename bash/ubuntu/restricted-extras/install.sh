#!/bin/bash

SCRIPT_NAME="ubuntu_restricted-extras_install"
SCRIPT_DESCRIPTION="Allows non-free tools in Ubuntu."
SCRIPT_DESCRIPTION_ES="Permite herramientas no libres en Ubuntu."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://askubuntu.com/questions/56446/how-do-i-install-the-ubuntu-restricted-extras-package"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt install $ARG_YES ubuntu-restricted-extras
}

# work
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_Q" == true ]; then
    echo -en "$TEXT_DANGER"
    CODE &>/dev/null
    echo -en "$TEXT_DEFAULT"
  else
    CODE
  fi
fi
