#!/bin/bash

LAYOUT_NAME="rar"
LAYOUT_APP="RAR"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://www.rarlab.com/"

LAYOUT_CODE() {
  echo "RAR is an archive format used to compress and package data. The term RAR can refer to both the archive format and the compression program used to create and extract files in this format."
}

LAYOUT_CODE_ES() {
  echo "RAR es un formato de archivo utilizado para comprimir y empaquetar datos. El término RAR puede referirse tanto al formato de archivo como al programa de compresión utilizado para crear y extraer archivos en este formato."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
