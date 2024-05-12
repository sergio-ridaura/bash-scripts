TEMPLATE_NAME="template_path"
TEMPLATE_DESCRIPTION="Path script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script path."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_path"
SCRIPT_DESCRIPTION="Get $LAYOUT_APP application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_H" != true ]; then
  if command -v $LAYOUT_NAME &>/dev/null; then
    LAYOUT_CODE
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
