#!/bin/bash

LAYOUT_NAME="telegram"
LAYOUT_APP="Telegram"
LAYOUT_VERSION="24.06.08"
LAYOUT_SEE="https://telegram.org/"

LAYOUT_CODE() {
  echo "Telegram Messenger, commonly known as Telegram, is a cloud-based, cross-platform, encrypted instant messaging (IM) service."
}

LAYOUT_CODE_ES() {
  echo "Telegram es una plataforma de mensajería y VOIP de origen ruso, desarrollada por los hermanos Nikolái y Pável Dúrov. La aplicación está enfocada en la mensajería instantánea, el envío de varios archivos y la comunicación en masa."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
