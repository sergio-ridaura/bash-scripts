#!/bin/bash

LAYOUT_NAME="blender"
LAYOUT_APP="Blender"
LAYOUT_VERSION="24.05.12"
LAYOUT_SEE="https://www.blender.org/"

LAYOUT_CODE() {
  echo "Blender is an open source software program used for the creation of 3D graphics, animations, visual effects, modeling, rendering and more. It is a versatile and powerful tool that has gained popularity in the film industry, video games, animation and design."
}

LAYOUT_CODE_ES() {
  echo "Blender es un programa de software de código abierto que se utiliza para la creación de gráficos 3D, animaciones, efectos visuales, modelado, renderizado y más. Es una herramienta versátil y poderosa que ha ganado popularidad en la industria del cine, los videojuegos, la animación y el diseño."
}

. "$(dirname "$0")/../template/whatis.sh"
