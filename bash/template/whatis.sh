TEMPLATE_NAME="template_whatis"
TEMPLATE_DESCRIPTION="Whatis script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script whatis."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_version"
SCRIPT_DESCRIPTION="Get description of the $LAYOUT_APP application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    LAYOUT_CODE
  else
    LAYOUT_CODE_ES
  fi
fi
