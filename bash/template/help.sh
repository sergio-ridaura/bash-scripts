TEMPLATE_NAME="template_help"
TEMPLATE_DESCRIPTION="Help script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script help."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_help"
SCRIPT_DESCRIPTION="$LAYOUT_APP help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_H" != true ]; then
  if command -v $LAYOUT_NAME &>/dev/null; then
    $LAYOUT_NAME --help
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
