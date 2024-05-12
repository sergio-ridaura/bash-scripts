TEMPLATE_NAME="template_links"
TEMPLATE_DESCRIPTION="Links script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script links."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_links"
SCRIPT_DESCRIPTION="List of help links for $LAYOUT_APP application."
SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# links
if [ "$ARG_BASH_H" != true ]; then
  LAYOUT_CODE
fi
