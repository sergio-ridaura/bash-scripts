#!/bin/bash

SCRIPT_NAME="ssh-app_boot"
SCRIPT_DESCRIPTION="Enables the SSH service to start automatically at OS boot."
SCRIPT_DESCRIPTION_ES="Permite que el servicio SSH se inicie automáticamente al iniciar el sistema operativo."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://www.openssh.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# enables
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT systemctl enable --now ssh
fi
