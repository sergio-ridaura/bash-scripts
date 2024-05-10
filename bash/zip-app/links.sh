#!/bin/bash

SCRIPT_NAME="zip-app_links"
SCRIPT_DESCRIPTION="List of help links for Zip application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Wikipedia           https://en.wikipedia.org/wiki/Zip_(file_format)
- Stack Overflow      https://stackoverflow.com/questions/tagged/zip
- Linuxize            https://linuxize.com/tags/zip/"
fi
