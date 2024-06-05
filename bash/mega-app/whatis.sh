#!/bin/bash

LAYOUT_NAME="mega"
LAYOUT_APP="Mega"
LAYOUT_VERSION="24.06.05"
LAYOUT_SEE="https://mega.io/"

LAYOUT_CODE() {
  echo "Mega is a file hosting service offered by MEGA CLOUD SERVICES LIMITED, a company based in Auckland, New Zealand.[2] The service is offered through web-based apps. MEGA mobile apps are also available for Android and iOS."
}

LAYOUT_CODE_ES() {
  echo "Mega (estilizado como MEGA) es un sitio web de almacenamiento, y sucesor del servicio de archivos en la nube Megaupload y Megavideo."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
