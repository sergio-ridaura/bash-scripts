#!/bin/bash

SCRIPT_NAME="code-app_settings_add"
SCRIPT_DESCRIPTION="Add recommended settings to the repository."
SCRIPT_DESCRIPTION_ES="Agregar configuración recomendadas en el repositorio."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/docs/getstarted/settings"
SCRIPT_ARG=(type)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && type="$1" || type="basic"

# add
if [ "$ARG_BASH_H" != true ]; then
  [ ! -d ".vscode" ] && mkdir .vscode

  cp "$SCRIPTS_PATH/code-app/settings/files/$type.settings.json" ".vscode/settings.json"
fi
