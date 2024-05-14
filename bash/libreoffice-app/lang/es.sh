#!/bin/bash

SCRIPT_NAME="libreoffice-app-lang_es"
SCRIPT_DESCRIPTION="LibreOffice in Spanish."
SCRIPT_VERSION="24.05.14"
SCRIPT_SEE="https://libreoffice.org/"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# install
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT apt install -y libreoffice-l10n-es
  $IS_ROOT apt install -y myspell-es
fi
