#!/bin/bash

SCRIPT_NAME="file_execution_edit"
SCRIPT_DESCRIPTION="Change the execution permissions of the file."
SCRIPT_DESCRIPTION_ES="Cambiar los permisos de ejecución del archivo.."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://manpages.debian.org/bookworm/manpages-es/chmod.1.es.html"
SCRIPT_ARG=(file execution)

# tools
. "$(dirname "$0")/../../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && file="$1"
[ "$file" == "" ] && ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && execution="$2"
[ "$execution" == "" ] && execution="true"

# edit
if [ "$ARG_BASH_H" != true ]; then
  if [ "$execution" == true ]; then
    $IS_ROOT chmod +x "${file}"
    echo $file
  else
    $IS_ROOT chmod -x "${file}"
    echo $file
  fi
fi