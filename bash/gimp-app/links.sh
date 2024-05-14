#!/bin/bash

LAYOUT_NAME="gimp"
LAYOUT_APP="Gimp"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://www.gimp.org/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.gimp.org/
- Repository          https://gitlab.gnome.org/GNOME/gimp
- Wikipedia           https://es.wikipedia.org/wiki/GIMP
- Stack Overflow      https://stackoverflow.com/questions/tagged/gimp"
}

# template
. "$(dirname "$0")/../template/links.sh"
