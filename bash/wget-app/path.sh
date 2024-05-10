#!/bin/bash

SCRIPT_NAME="wget-app_path"
SCRIPT_DESCRIPTION="Get Wget application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v wget &>/dev/null; then
    which wget
  else
    ERROR_NOT_FOUND "Wget"
  fi
fi
