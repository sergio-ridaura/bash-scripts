#!/bin/bash

SCRIPT_NAME="blender-app_links"
SCRIPT_DESCRIPTION="List of help links for Blender application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Blender."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://www.blender.org/
- Documentation       https://docs.blender.org/manual/en/latest/
- Repository          https://git.blender.org/gitweb/gitweb.cgi/blender.git
- Wikipedia           https://en.wikipedia.org/wiki/Blender_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/blender"
fi
