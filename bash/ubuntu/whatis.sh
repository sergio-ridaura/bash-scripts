#!/bin/bash

SCRIPT_NAME="ubuntu_watis"
SCRIPT_DESCRIPTION="Get description of the Ubuntu."
SCRIPT_DESCRIPTION_ES="Obtener descripción de Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://tmux.github.io/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Ubuntu es un sistema operativo de código abierto basado en Linux conocido por su facilidad de uso, estabilidad y una amplia comunidad de usuarios."
  else
    echo "Ubuntu is a open-source Linux-based operating system known for its user-friendliness, stability, and a wide user community."
  fi
fi
