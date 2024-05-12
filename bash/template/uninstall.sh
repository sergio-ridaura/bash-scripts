TEMPLATE_NAME="template_uninstall"
TEMPLATE_DESCRIPTION="Uninstall script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script uninstall."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_uninstall"
SCRIPT_DESCRIPTION="$LAYOUT_APP application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_H" != true ]; then
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
