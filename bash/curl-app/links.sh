#!/bin/bash

SCRIPT_NAME="curl-app_links"
SCRIPT_DESCRIPTION="List of help links for cURL application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_I" != true ]; then
  echo "\
- Official website    https://curl.se/
- Documentation       https://curl.se/docs/
- Repository          https://github.com/curl/curl
- Wikipedia           https://en.wikipedia.org/wiki/CURL
- Stack Overflow      https://stackoverflow.com/questions/tagged/culr
- Linuxize            https://linuxize.com/tags/curl/"
fi
