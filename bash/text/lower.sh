#!/bin/bash

SCRIPT_NAME="text_lower"
SCRIPT_DESCRIPTION="Convert text to lowercase."
SCRIPT_DESCRIPTION_ES="Convertir el texto en minúsculas."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://www.geeksforgeeks.org/tr-command-in-unix-linux-with-examples/"
SCRIPT_ARG=(text)

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && text="$1"
[ "$text" == "" ] && ERROR_ARGUMENT_MISSING 0

# edit
if [ "$ARG_BASH_H" != true ]; then
  echo "$text" | tr '[:upper:]' '[:lower:]'
fi
