#!/bin/bash

LAYOUT_NAME="dosbox"
LAYOUT_APP="DOSBox"
LAYOUT_VERSION="24.06.15"
LAYOUT_SEE="https://www.dosbox.com/"

LAYOUT_CODE() {
  echo "\
- Official website    https://www.blender.org/
- Documentation       https://www.dosbox.com/DOSBoxManual.html
- Tutorial            https://www.dosbox.com/wiki/Basic_Setup_and_Installation_of_DosBox
- Wiki                https://www.dosbox.com/wiki/Main_Page
- Forum               https://www.vogons.org/
- Repository          https://sourceforge.net/p/dosbox/code-0/HEAD/tree/
- Wikipedia           https://en.wikipedia.org/wiki/DOSBox
- Stack Overflow      https://stackoverflow.com/questions/tagged/dosbox"
}

# template
. "$(dirname "$0")/../template/links.sh"
