#!/bin/bash

SCRIPT_NAME="user_password"
SCRIPT_DESCRIPTION="Add or change the user's password in the system."
SCRIPT_DESCRIPTION_ES="Agregar o cambiar la contraseña del usuario en el sistema."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://linuxhandbook.com/passwd-command/"
SCRIPT_ARG=(user)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && user="$1"
[ "$user" == "" ] && ERROR_ARGUMENT_MISSING 0
! id "$user" &>/dev/null && ERROR_NOT_FOUND "$user"

# password
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT passwd $user
fi
