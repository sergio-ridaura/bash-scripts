if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_help"
  SCRIPT_DESCRIPTION="Help script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script help."
  SCRIPT_VERSION="24.05.14"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_help"
  SCRIPT_DESCRIPTION="$LAYOUT_APP help command."
  SCRIPT_DESCRIPTION_ES="Comando de ayuda de $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

if ! declare -F LAYOUT_CODE >/dev/null; then
  LAYOUT_CODE() {
    $LAYOUT_NAME --help
  }
fi

# help
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if command -v $LAYOUT_NAME &>/dev/null; then
    LAYOUT_CODE
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
