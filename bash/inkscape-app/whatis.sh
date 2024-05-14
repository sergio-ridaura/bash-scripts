#!/bin/bash

LAYOUT_NAME="inkscape"
LAYOUT_APP="Inkscape"
LAYOUT_VERSION="24.05.14"
LAYOUT_SEE="https://inkscape.org/"

LAYOUT_CODE() {
  echo "Inkscape is a program dedicated to the creation and editing of vector graphics."
}

LAYOUT_CODE_ES() {
  echo "Inkscape es un programa dedicado a la creación y edición de gráficos vectoriales."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
