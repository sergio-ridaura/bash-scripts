#!/bin/bash

SCRIPT_NAME="wget-app_links"
SCRIPT_DESCRIPTION="List of help links for Wget application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://www.gnu.org/software/wget/
- Repository          https://git.savannah.gnu.org/cgit/wget.git
- Wikipedia           https://en.wikipedia.org/wiki/Wget
- Stack Overflow      https://stackoverflow.com/questions/tagged/wget
- Linuxize            https://linuxize.com/tags/wget/"
fi
