#!/bin/bash

SCRIPT_NAME="code-app_extensions_bash"
SCRIPT_DESCRIPTION="Adds Visual Studio Code extensions for Bash development."
SCRIPT_DESCRIPTION_ES="Añade extensiones de Visual Studio Code para el desarrollo en Bash."
SCRIPT_VERSION="24.05.23"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# add
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "ms-ceintl.vscode-language-pack-es" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "streetsidesoftware.code-spell-checker" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "streetsidesoftware.code-spell-checker-spanish" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "mhutchie.git-graph" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "foxundermoon.shell-format" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "ms-azuretools.vscode-docker" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "esbenp.prettier-vscode" "-m"
fi
