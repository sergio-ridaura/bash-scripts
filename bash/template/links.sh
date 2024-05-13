if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_links"
  SCRIPT_DESCRIPTION="Links script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script links."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_links"
  SCRIPT_DESCRIPTION="List of help links for $LAYOUT_APP application."
  SCRIPT_DESCRIPTION_ES="Lista de enlaces de ayuda para la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# links
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  LAYOUT_CODE
fi
