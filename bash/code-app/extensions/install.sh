#!/bin/bash

SCRIPT_NAME="code_extensions_install"
SCRIPT_DESCRIPTION="Install Visual Studio Code extension."
SCRIPT_DESCRIPTION_ES="Instala extension de Visual Studio Code."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/"
SCRIPT_ARG=(extension)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && extension="$1" || ERROR_ARGUMENT_MISSING 0

# install
if [ "$ARG_BASH_H" != true ]; then
  code --install-extension $extension
  if [ "$ARG_BASH_S" = true ]; then
    echo "install $extension"
  fi
fi
