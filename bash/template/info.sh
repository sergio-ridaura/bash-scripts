TEMPLATE_NAME="template_info"
TEMPLATE_DESCRIPTION="Info script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script info."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_info"
SCRIPT_DESCRIPTION="$LAYOUT_APP info command."
SCRIPT_DESCRIPTION_ES="Comando de información de $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
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
