#!/bin/bash

LAYOUT_NAME="zip"
LAYOUT_APP="Zip"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

LAYOUT_CODE() {
  echo "Zip is a command line utility used to compress files and directories into a ZIP archive. The ZIP format is widely used to package and compress multiple files and directories into a single file."
}

LAYOUT_CODE_ES() {
  echo "Zip es una utilidad de línea de comandos que se utiliza para comprimir archivos y directorios en un archivo ZIP. El formato ZIP se usa ampliamente para empaquetar y comprimir varios archivos y directorios en un solo archivo."
}

. "$(dirname "$0")/../template/whatis.sh"
