#!/bin/bash

SCRIPT_NAME="code-app_extensions_bash"
SCRIPT_DESCRIPTION="Install Visual Studio Code extensions for Bash development."
SCRIPT_DESCRIPTION_ES="Instala extensiones de Visual Studio Code para el desarrollo en Bash."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# install
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/code-app/extensions/basic.sh" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "foxundermoon.shell-format" "-m"
fi
