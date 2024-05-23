#!/bin/bash

LAYOUT_NAME="opera"
LAYOUT_APP="Opera"
LAYOUT_VERSION="24.05.23"
LAYOUT_SEE="https://www.opera.com/"

LAYOUT_CODE() {
  echo "Opera is a multi-platform web browser developed by its namesake company Opera. The current edition of the browser is based on Chromium."
}

LAYOUT_CODE_ES() {
  echo "Blender es un programa de software de código abierto que se utiliza para la creación de gráficos 3D, animaciones, efectos visuales, modelado, renderizado y más. Es una herramienta versátil y poderosa que ha ganado popularidad en la industria del cine, los videojuegos, la animación y el diseño."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
