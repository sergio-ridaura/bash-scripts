#!/bin/bash

SCRIPT_NAME="code_extensions_add"
SCRIPT_DESCRIPTION="Adds Visual Studio Code extension."
SCRIPT_DESCRIPTION_ES="Añade extension de Visual Studio Code."
SCRIPT_VERSION="24.05.23"
SCRIPT_SEE="https://code.visualstudio.com/"
SCRIPT_ARG=(extension)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && extension="$1"
[ "$extension" == "" ] && ERROR_ARGUMENT_MISSING 0

# add
if [ "$ARG_BASH_H" != true ]; then
  code --install-extension $extension
  if [ "$ARG_BASH_S" = true ]; then
    echo "add $extension"
  fi
fi
