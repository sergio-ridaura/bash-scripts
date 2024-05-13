if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_uninstall"
  SCRIPT_DESCRIPTION="Uninstall script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script uninstall."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_uninstall"
  SCRIPT_DESCRIPTION="$LAYOUT_APP application uninstallation."
  SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# uninstall
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if command -v $LAYOUT_NAME &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      LAYOUT_CODE &>/dev/null
    else
      LAYOUT_CODE
    fi
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
