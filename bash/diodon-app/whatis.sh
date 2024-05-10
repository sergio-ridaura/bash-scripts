#!/bin/bash

SCRIPT_NAME="diodon-app_watis"
SCRIPT_DESCRIPTION="Get description of the Diodon application."
SCRIPT_DESCRIPTION_ES="Obtenga una descripción de la aplicación Diodon."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# whatis
if [ "$ARG_BASH_H" != true ]; then
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo "Diodon es un administrador de portapapeles liviano para Linux escrito en Vala que apunta a ser el mejor administrador de portapapeles integrado para el escritorio Gnome/GTK+."
  else
    echo "Diodon is a lightweight clipboard manager for Linux written in Vala which aims to be the best integrated clipboard manager for the Gnome/GTK+ desktop."
  fi
fi
