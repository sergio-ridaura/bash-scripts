#!/bin/bash

SCRIPT_NAME="npm-app_help"
SCRIPT_DESCRIPTION="Npm help command."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_O" != true ]; then
  if command -v npm &>/dev/null; then
    npm --help
  else
    echo -e "${TEXT_DANGER}ERROR: Npm is not installed${TEXT_DEFAULT}"
  fi
fi
