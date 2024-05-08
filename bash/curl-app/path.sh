#!/bin/bash

SCRIPT_NAME="curl-app_path"
SCRIPT_DESCRIPTION="Get cURL application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_I" != true ]; then
  if command -v curl &>/dev/null; then
    which curl
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
