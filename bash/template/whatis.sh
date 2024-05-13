if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_whatis"
  SCRIPT_DESCRIPTION="Whatis script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script whatis."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_version"
  SCRIPT_DESCRIPTION="Get description of the $LAYOUT_APP application."
  SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# whatis
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    LAYOUT_CODE
  else
    LAYOUT_CODE_ES
  fi
fi
