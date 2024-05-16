#!/bin/bash

SCRIPT_NAME="user_connect_error"
SCRIPT_DESCRIPTION="Lists computer login attempts."
SCRIPT_DESCRIPTION_ES="Lista de intentos de inicio de sesión de la computadora."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://www.computerhope.com/unix/last.htm"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# errors
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT lastb
fi
