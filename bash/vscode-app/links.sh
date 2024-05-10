#!/bin/bash

SCRIPT_NAME="vscode-app_links"
SCRIPT_DESCRIPTION="List of help links for Visual Studio Code application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  echo "\
- Official website    https://code.visualstudio.com/
- Documentation       https://code.visualstudio.com/docs
- Repository          https://github.com/microsoft/vscode
- Wikipedia           https://en.wikipedia.org/wiki/Visual_Studio_Code
- Stack Overflow      https://stackoverflow.com/questions/tagged/vscode"
fi
