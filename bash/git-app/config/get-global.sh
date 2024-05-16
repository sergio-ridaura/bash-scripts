#!/bin/bash

SCRIPT_NAME="git-app_config_get-global"
SCRIPT_DESCRIPTION="Get Git global settings."
SCRIPT_DESCRIPTION_ES="Obtener la configuración global de Git."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# configuration
if [ "$ARG_BASH_H" != true ]; then
  git config --global --list
fi
