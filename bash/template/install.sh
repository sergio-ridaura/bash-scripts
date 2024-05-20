if [ -z "$LAYOUT_NAME" ]; then
  SCRIPT_NAME="template_install"
  SCRIPT_DESCRIPTION="Install script template."
  SCRIPT_DESCRIPTION_ES="Plantilla de script install."
  SCRIPT_VERSION="24.05.18"
else
  SCRIPT_NAME="$LAYOUT_NAME-app_install"
  SCRIPT_DESCRIPTION="$LAYOUT_APP application installation."
  SCRIPT_DESCRIPTION_ES="Instalación de la aplicación $LAYOUT_APP."
  SCRIPT_VERSION=$LAYOUT_VERSION
  SCRIPT_SEE="$LAYOUT_SEE"
fi

# tools
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
. "$DEV_PATH/bash/bash-utilities.sh"

if ! declare -F LAYOUT_CODE >/dev/null; then
  LAYOUT_CODE() {
    $IS_ROOT apt install $ARG_YES $LAYOUT_NAME
  }
fi

# install
if [ -n "$LAYOUT_NAME" ] && [ "$ARG_BASH_H" != true ]; then
  if ! command -v $LAYOUT_NAME &>/dev/null; then
    LAYOUT_CODE
  else
    echo $LAYOUT_APP is already
  fi
fi
