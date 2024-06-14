#!/bin/bash

SCRIPT_NAME="user_shell_select"
SCRIPT_DESCRIPTION="Select Shell used by the user."
SCRIPT_DESCRIPTION_ES="Selecciona Shell utilizado por el usuario."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.tecmint.com/change-a-users-default-shell-in-linux/"
SCRIPT_ARG=(user shell)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && name="$1" || ERROR_ARGUMENT_MISSING 0
! id "$name" &>/dev/null && ERROR_NOT_FOUND "$name"

[ $# -ge 2 ] && type="$2" || type="/bin/bash"
grep -Fxq "$type" /etc/shells &>/dev/null || ERROR_NOT_FOUND "$type"

# mod
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT usermod --shell $type $name
fi
