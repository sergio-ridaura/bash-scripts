if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_info"
  SCRIPT_DESCRIPTION="Info script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script info."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_info"
  SCRIPT_DESCRIPTION="$LAYOUT_APP info command."
  SCRIPT_DESCRIPTION_ES="Comando de información de $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# info
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if command -v info &>/dev/null; then
    if command -v $LAYOUT_NAME &>/dev/null; then
      info $LAYOUT_NAME
    else
      ERROR_NOT_FOUND "$LAYOUT_APP"
    fi
  else
    ERROR_NOT_FOUND "info"
  fi
fi
