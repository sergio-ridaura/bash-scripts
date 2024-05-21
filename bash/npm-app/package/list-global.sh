#!/bin/bash

SCRIPT_NAME="npm-app_package_list-global"
SCRIPT_DESCRIPTION="List of global npm packages."
SCRIPT_DESCRIPTION_ES="Lista de paquetes de npm globales."
SCRIPT_VERSION="24.05.18"
SCRIPT_SEE="https://docs.npmjs.com/cli/v7/commands/npm-ls"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  npm --global list
fi
