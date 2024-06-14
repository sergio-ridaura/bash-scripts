#!/bin/bash

SCRIPT_NAME="user_password"
SCRIPT_DESCRIPTION="Add or change the user's password in the system."
SCRIPT_DESCRIPTION_ES="Agregar o cambiar la contraseña del usuario en el sistema."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://linuxhandbook.com/passwd-command/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1" || ERROR_ARGUMENT_MISSING 0
! id "$name" &>/dev/null && ERROR_NOT_FOUND "$name"

# password
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT passwd $name
fi
