#!/bin/bash

SCRIPT_NAME="code-app_extensions_basic"
SCRIPT_DESCRIPTION="Install Visual Studio Code extensions for development."
SCRIPT_DESCRIPTION_ES="Instala extensiones de Visual Studio Code para el desarrollo."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# install
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "ms-ceintl.vscode-language-pack-es" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "streetsidesoftware.code-spell-checker" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "streetsidesoftware.code-spell-checker-spanish" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "mhutchie.git-graph" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "ms-azuretools.vscode-docker" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "esbenp.prettier-vscode" "-m"
fi
