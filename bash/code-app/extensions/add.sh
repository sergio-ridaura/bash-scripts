#!/bin/bash

SCRIPT_NAME="code-app_extension_add"
SCRIPT_DESCRIPTION="Add recommended extensions to the repository."
SCRIPT_DESCRIPTION_ES="Agregar extensiones recomendadas en el repositorio."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://code.visualstudio.com/docs/editor/extension-marketplace"
SCRIPT_ARG=(type)

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && type="$1" || type="basic"

# add
if [ "$ARG_BASH_H" != true ]; then
  [ ! -d ".vscode" ] && mkdir .vscode

  cp "$SCRIPTS_PATH/code-app/extensions/files/$type.extensions.json" ".vscode/extensions.json"
fi
