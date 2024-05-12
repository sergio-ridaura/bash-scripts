TEMPLATE_NAME="template_install"
TEMPLATE_DESCRIPTION="Install script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script install."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_install"
SCRIPT_DESCRIPTION="$LAYOUT_APP application installation."
SCRIPT_DESCRIPTION_ES="Instalación de la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# install
if [ "$ARG_BASH_H" != true ]; then
  LAYOUT_CODE
fi
