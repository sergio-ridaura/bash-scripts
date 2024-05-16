#!/bin/bash

SCRIPT_NAME="git-app_config_global"
SCRIPT_DESCRIPTION="Git user global configuration."
SCRIPT_DESCRIPTION_ES="Configuración global del usuario de Git."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup"
SCRIPT_ARG=(user email)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
user=$GIT_USER_NAME
[ $# -ge 1 ] && user="$1"
[ "$user" == "" ] && ERROR_ARGUMENT_MISSING 0

email=$GIT_USER_EMAIL
[ $# -ge 2 ] && email="$2"
[ "$email" == "" ] && ERROR_ARGUMENT_MISSING 1

# config
if [ "$ARG_BASH_H" != true ]; then
  git config --global user.name $user
  git config --global user.email $email
fi
