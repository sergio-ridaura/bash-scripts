if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_path"
  SCRIPT_DESCRIPTION="Path script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script path."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_path"
  SCRIPT_DESCRIPTION="Get $LAYOUT_APP application path."
  SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# path
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if command -v $LAYOUT_NAME &>/dev/null; then
    LAYOUT_CODE
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
