#!/bin/bash

SCRIPT_NAME="npm-app_path"
SCRIPT_DESCRIPTION="Get Npm application path."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://docs.npmjs.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_O" != true ]; then
  if command -v npm &>/dev/null; then
    which npm
  else
    echo -e "${TEXT_DANGER}ERROR: Npm is not installed${TEXT_DEFAULT}"
  fi
fi
