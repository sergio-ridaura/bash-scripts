#!/bin/bash

SCRIPT_NAME="ubuntu_update"
SCRIPT_DESCRIPTION="Updating and cleaning the Ubuntu Operating System."
SCRIPT_DESCRIPTION_ES="Actualización y limpieza del Sistema Operativo Ubuntu."
SCRIPT_VERSION="24.05.05."
SCRIPT_SEE="https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line"

. "$(dirname "$0")/../bash-utilities.sh"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
