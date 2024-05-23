#!/bin/bash

SCRIPT_NAME="code-app_extensions_astro"
SCRIPT_DESCRIPTION="Adds Visual Studio Code extensions for Astro development."
SCRIPT_DESCRIPTION_ES="Añade extensiones de Visual Studio Code para el desarrollo en Astro."
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
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "astro-build.astro-vscode" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "jock.svg" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "bradlc.vscode-tailwindcss" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/add.sh" "cweijan.vscode-mysql-client2" "-m"
fi
