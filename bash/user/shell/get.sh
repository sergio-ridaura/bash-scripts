#!/bin/bash

SCRIPT_NAME="user_shell_get"
SCRIPT_DESCRIPTION="Query Shell used by the user."
SCRIPT_DESCRIPTION_ES="Consulta Shell utilizado por el usuario."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.tecmint.com/change-a-users-default-shell-in-linux/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# get
if [ "$ARG_BASH_H" != true ]; then
  echo $SHELL
fi
