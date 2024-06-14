#!/bin/bash

SCRIPT_NAME="text_capital"
SCRIPT_DESCRIPTION="Convert text to uppercase."
SCRIPT_DESCRIPTION_ES="Convertir el texto en mayúsculas."
SCRIPT_VERSION="24.06.14"
SCRIPT_SEE="https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1" || ERROR_ARGUMENT_MISSING 0

# edit
if [ "$ARG_BASH_H" != true ]; then
  echo "$text" | tr '[:lower:]' '[:upper:]'
fi
