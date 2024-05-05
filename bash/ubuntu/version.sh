#!/bin/bash

SCRIPT_NAME="ubuntu_version"
SCRIPT_DESCRIPTION="Ubuntu operating system version."
SCRIPT_DESCRIPTION_ES="Versión del sistema operativo Ubuntu."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://www.computerhope.com/unix/lsb_release.htm"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  lsb_release -a
}

# version
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_S" == true ]; then
    echo $(CODE 2>&1 | grep -oP 'Ubuntu \K\d+\.\d+\.\d+')
  else
    CODE
  fi
fi
