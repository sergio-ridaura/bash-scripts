#!/bin/bash

SCRIPT_NAME="works_develop"
SCRIPT_DESCRIPTION="Installs and configures the applications I use on my work computer."
SCRIPT_DESCRIPTION_ES="Instala y configura las aplicaciones que necesito en mi computador de trabajo."
SCRIPT_VERSION="24.06.16"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# develop
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/works/server.sh" "-y" "-m"
  "${SCRIPTS_PATH}/docker-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/docker-app/compose/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/diodon-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/edge-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/chrome-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/code-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/gimp-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/inkscape-app/install.sh" "-y" "-m"
fi
