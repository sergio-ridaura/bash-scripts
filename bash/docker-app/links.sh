#!/bin/bash

LAYOUT_NAME="docker"
LAYOUT_APP="Docker"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/"

LAYOUT_CODE() {
  echo "\
- Official website    ttps://docs.docker.com/
- Documentation       https://www.docker.com/
- Repository          https://github.com/moby/moby
- Wikipedia           https://en.wikipedia.org/wiki/Docker_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/docker"
}

# template
. "$(dirname "$0")/../template/links.sh"
