#!/bin/bash

SCRIPT_NAME="works_retro"
SCRIPT_DESCRIPTION="Install and configure the applications that I use in my hobby of retro computing."
SCRIPT_DESCRIPTION_ES="Instala y configura las aplicaciones que utilizo en mi afición sobre la retro informática."
SCRIPT_VERSION="24.06.19"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# server
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/ubuntu/update.sh" "-y" "-m"
  "${SCRIPTS_PATH}/lha-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/fs-uae-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/dosbox-app/install.sh" "-y" "-m"
fi
