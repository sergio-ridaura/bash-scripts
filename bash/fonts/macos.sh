#!/bin/bash

SCRIPT_NAME="fonts_macos"
SCRIPT_DESCRIPTION="Install the main macOS sources on the operating system."
SCRIPT_DESCRIPTION_ES="Instalar las principales fuentes de macOS en el sistema operativo."
SCRIPT_VERSION="24.05.16"
SCRIPT_SEE="https://bookofzeus.com/customize-ubuntu/fonts/install-mac-os-fonts-in-ubuntu/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# fonts
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT apt install $ARG_YES wget zip
  wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip
  $IS_ROOT unzip mac-fonts.zip -d /usr/share/fonts
  rm mac-fonts.zip
fi
