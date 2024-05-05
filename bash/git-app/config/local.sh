#!/bin/bash

SCRIPT_NAME="git-app_config_local_user_add"
SCRIPT_DESCRIPTION="Git user local configuration."
SCRIPT_DESCRIPTION_ES="Configuración local del usuario de Git."
SCRIPT_VERSION="24.05.05"
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
if [ "$ARG_BASH_I" != true ]; then
  echo -en "$TEXT_DANGER"
  git config user.name $user
  git config user.email $email
  echo -en "$TEXT_DEFAULT"
fi
