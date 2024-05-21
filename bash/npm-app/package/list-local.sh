#!/bin/bash

SCRIPT_NAME="npm-app_package_list-local"
SCRIPT_DESCRIPTION="List of local npm packages."
SCRIPT_DESCRIPTION_ES="Lista de paquetes de npm locales."
SCRIPT_VERSION="24.05.18"
SCRIPT_SEE="https://docs.npmjs.com/cli/v7/commands/npm-ls"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# list
if [ "$ARG_BASH_H" != true ]; then
  npm list
fi
