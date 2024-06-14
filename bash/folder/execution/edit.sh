#!/bin/bash

SCRIPT_NAME="folder_execution_edit"
SCRIPT_DESCRIPTION="Change the execution permissions of the files within the folder."
SCRIPT_DESCRIPTION_ES="Cambiar los permisos de ejecución de los archivos dentro de la carpeta."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://manpages.debian.org/bookworm/manpages-es/chmod.1.es.html"
SCRIPT_ARG=(folder type execution)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && folder="$1" || ERROR_ARGUMENT_MISSING 0
[ ! -d "$folder" ] && ERROR_NOT_FOUND "$folder"

[ $# -ge 2 ] && type="$2" || type="*.sh"

[ $# -ge 3 ] && execution="$3" || execution="true"

# edit
if [ "$ARG_BASH_H" != true ]; then
  if [ "$execution" == true ]; then
    $IS_ROOT find "$folder" -type f -name "$type" -exec chmod +x {} \; -printf "%p\n"
  else
    $IS_ROOT find "$folder" -type f -name "$type" -exec chmod -x {} \; -printf "%p\n"
  fi
fi
