#!/bin/bash

SCRIPT_NAME="file_execution_edit"
SCRIPT_DESCRIPTION="Change the execution permissions of the file."
SCRIPT_DESCRIPTION_ES="Cambiar los permisos de ejecución del archivo."
SCRIPT_VERSION="24.06.18"
SCRIPT_SEE="https://manpages.debian.org/bookworm/manpages-es/chmod.1.es.html"
SCRIPT_ARG=(file execution)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -f "$file" ] && ERROR_NOT_FOUND "$file"

[ $# -ge 2 ] && execution="$2" || execution="true"
[ "$execution" == "true" ] && execution="-x" || execution="+x"

# edit
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT chmod "$execution" "${file}"
fi
