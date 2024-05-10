#!/bin/bash

SCRIPT_NAME="zip-app_watis"
SCRIPT_DESCRIPTION="Get description of the Zip application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Zip."
SCRIPT_VERSION="24.05.10"
vimSCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Zip es una utilidad de línea de comandos que se utiliza para comprimir archivos y directorios en un archivo ZIP. El formato ZIP se usa ampliamente para empaquetar y comprimir varios archivos y directorios en un solo archivo."
  else
    echo "Zip is a command line utility used to compress files and directories into a ZIP archive. The ZIP format is widely used to package and compress multiple files and directories into a single file."
  fi
fi
