if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_version"
  SCRIPT_DESCRIPTION="Version script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script version."
  SCRIPT_VERSION="24.05.13"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_version"
  SCRIPT_DESCRIPTION="$LAYOUT_APP application version."
  SCRIPT_DESCRIPTION_ES="Version de la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

# version
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
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
