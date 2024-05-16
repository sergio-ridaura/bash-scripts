#!/bin/bash

SCRIPT_NAME="works_server"
SCRIPT_DESCRIPTION="Install and configure the applications I need on my server."
SCRIPT_DESCRIPTION_ES="Instala y configura las aplicaciones que necesito en mi servidor."
SCRIPT_VERSION="24.05.16"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# server
if [ "$ARG_BASH_H" != true ]; then
  "${SCRIPTS_PATH}/ubuntu/update.sh" "-y" "-m"
  "${SCRIPTS_PATH}/wget-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/curl-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/ssh-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/vim-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/tmux-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/zip-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/fail2ban-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/ifconfig-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/nmap-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/git-app/install.sh" "-y" "-m"
  "${SCRIPTS_PATH}/git-app/config/global.sh" "-m"
fi
