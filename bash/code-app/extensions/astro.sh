#!/bin/bash

SCRIPT_NAME="code-app_extensions_astro"
SCRIPT_DESCRIPTION="Install Visual Studio Code extensions for Astro development."
SCRIPT_DESCRIPTION_ES="Instala extensiones de Visual Studio Code para el desarrollo en Astro."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# install
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/code-app/extensions/basic.sh" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "foxundermoon.shell-format" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "astro-build.astro-vscode" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "jock.svg" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "bradlc.vscode-tailwindcss" "-m"
  "${SCRIPTS_PATH}/code-app/extensions/install.sh" "cweijan.vscode-mysql-client2" "-m"
fi
