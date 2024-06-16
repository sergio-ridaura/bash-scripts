#!/bin/bash

LAYOUT_NAME="jlha"
LAYOUT_APP="LHA"
LAYOUT_VERSION="24.06.16"
LAYOUT_SEE="https://en.wikipedia.org/wiki/LHA_(file_format)"

LAYOUT_CODE() {
  echo "LHA or LZH is a freeware compression utility and associated file format. It was created in 1988 by Haruyasu Yoshizaki, a doctor, and originally named LHarc."
}

LAYOUT_CODE_ES() {
  echo "En informática, LHA o LHARC es un algoritmo de compresión de archivos sin pérdida de información basado en el algoritmo LZSS, que, a su vez, se basaba en el LZ77 de James Storer y Thomas Szymanski (1982)."
}

# template
. "$(dirname "$0")/../template/whatis.sh"
