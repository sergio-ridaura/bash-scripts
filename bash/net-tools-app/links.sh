#!/bin/bash

SCRIPT_NAME="net-tools-app_links"
SCRIPT_DESCRIPTION="List of help links for Net-tools application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    http://www.net-tools.org/
- Repository          https://github.com/ecki/net-tools
- Wikipedia           https://en.wikipedia.org/wiki/Ifconfig
- Stack Overflow      https://stackoverflow.com/questions/tagged/net-tools"
fi
