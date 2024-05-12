TEMPLATE_NAME="template_version"
TEMPLATE_DESCRIPTION="Version script template."
TEMPLATE_DESCRIPTION_ES="Plantilla de script version."
TEMPLATE_VERSION="24.05.12"

SCRIPT_NAME="$LAYOUT_NAME-app_version"
SCRIPT_DESCRIPTION="$LAYOUT_APP application version."
SCRIPT_DESCRIPTION_ES="Version de la aplicación $LAYOUT_APP."
SCRIPT_VERSION=$LAYOUT_VERSION
SCRIPT_SEE="$LAYOUT_SEE"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v blender &>/dev/null; then
    if [ "${ARG_BASH_S}" == true ]; then
      LAYOUT_CODE_SHORT
    else
      LAYOUT_CODE
    fi
  else
    ERROR_NOT_FOUND "$LAYOUT_APP"
  fi
fi
