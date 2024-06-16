#!/bin/bash

SCRIPT_NAME="works_basic"
SCRIPT_DESCRIPTION="Installs and configures the applications I use on a basic computer."
SCRIPT_DESCRIPTION_ES="Instala y configura las aplicaciones que utilizo en un ordenador básico."
SCRIPT_VERSION="24.06.16"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# server
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/ubuntu/update.sh" "-y" "-m"
  "${SCRIPTS_PATH}/wget-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/curl-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/chrome-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/libreoffice-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/libreoffice-app/lang/es.sh" "-y" "-m"
  "${SCRIPTS_PATH}/vlc-app/install.sh" "-y" "-m"
fi
