#!/bin/bash

SCRIPT_NAME="git-app_config_get"
SCRIPT_DESCRIPTION="Get Git global settings."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# configuration
if [ "$ARG_BASH_O" != true ]; then
  if [ "$ARG_BASH_S" == true ]; then
    echo $(git config --global --list)
  else
    git config --global --list
  fi
fi
