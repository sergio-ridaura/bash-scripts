#!/bin/bash

SCRIPT_NAME="diodon-app_links"
SCRIPT_DESCRIPTION="List of help links for Diodon application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Diodon."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://systemd.io"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_I" != true ]; then
  echo "\
- Official website    https://launchpad.net/diodon
- Repository          https://github.com/diodon-dev/diodon
- Wikipedia           https://en.wikipedia.org/wiki/Diodon_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/diodon
fi
