#!/bin/bash

SCRIPT_NAME="blender-app_watis"
SCRIPT_DESCRIPTION="Get description of the Blender application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Blender."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.blender.org/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_I" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Blender es un programa de software de código abierto que se utiliza para la creación de gráficos 3D, animaciones, efectos visuales, modelado, renderizado y más. Es una herramienta versátil y poderosa que ha ganado popularidad en la industria del cine, los videojuegos, la animación y el diseño."
  else
    echo "Blender is an open source software program used for the creation of 3D graphics, animations, visual effects, modeling, rendering and more. It is a versatile and powerful tool that has gained popularity in the film industry, video games, animation and design."
  fi
fi
