#!/bin/bash

SCRIPT_NAME="chrome-app_links"
SCRIPT_DESCRIPTION="List of help links for Google Chrome application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Google Chrome."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://www.google.com/chrome/
- Documentation       https://developer.chrome.com/docs/
- Wikipedia           https://en.wikipedia.org/wiki/Google_Chrome
- Stack Overflow      https://stackoverflow.com/questions/tagged/chrome"
fi
