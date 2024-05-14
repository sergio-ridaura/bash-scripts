#!/bin/bash

SCRIPT_NAME="fonts_windows_install"
SCRIPT_DESCRIPTION="Install the main Windows fonts on the operating system."
SCRIPT_DESCRIPTION_ES="Instalar las principales fuentes de Windows en el sistema operativo."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://itsfoss.com/install-microsoft-fonts-ubuntu/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# fonts
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT apt install $ARG_YES ttf-mscorefonts-installer
fi
