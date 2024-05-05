#!/bin/bash

if [[ "$0" == *"/bash-utilities.sh" ]]; then
  SCRIPT_NAME="bash-utilities"
  SCRIPT_DESCRIPTION="Tool to manage my collection of Bash scripts."
  SCRIPT_DESCRIPTION_ES="Herramienta para gestionar mi colección de scripts de Bash."
  SCRIPT_VERSION="24.05.05"
  SCRIPT_SEE="https://github.com/sergio-ridaura/bash-scripts"
fi

CURRENT_PATH="$(pwd)"
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_PATH="${DEV_PATH}/bash"

if [ -e "${DEV_PATH}/.env.bash" ]; then
  . "${DEV_PATH}/.env.bash"
else
  . "${DEV_PATH}/.env.bash.default"
fi
