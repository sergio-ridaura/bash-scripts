#!/bin/bash

SCRIPT_NAME="date-app_links"
SCRIPT_DESCRIPTION="List of help links for date application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación date."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_I" != true ]; then
  echo "\
- Official website    https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html
- Documentation       https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html
- Stack Overflow      https://stackoverflow.com/questions/tagged/date"
fi
