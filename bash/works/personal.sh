#!/bin/bash

SCRIPT_NAME="personal_develop"
SCRIPT_DESCRIPTION="Install and configure the applications I need on my personal computer."
SCRIPT_DESCRIPTION_ES="Instala y configura las aplicaciones que necesito en mi computador personal."
SCRIPT_VERSION="24.06.16"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# develop
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/works/server.sh" "-y" "-m"
  "${SCRIPTS_PATH}/works/develop.sh" "-y" "-m"
  "${SCRIPTS_PATH}/works/retro.sh" "-y" "-m"
  "${SCRIPTS_PATH}/qbittorrent-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/blender-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/vlc-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/obs-app/install.sh" "-y" "-m"
fi
