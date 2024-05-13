#!/bin/bash

LAYOUT_NAME="docker-compose"
LAYOUT_APP="Docker Compose"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/compose/"

LAYOUT_CODE() {
  echo "\
- Official website    https://docs.docker.com/compose/
- Documentation       https://docs.docker.com/compose/
- Repository          https://github.com/docker/compose
- Wikipedia           https://en.wikipedia.org/wiki/Docker_(software)
- Stack Overflow      https://stackoverflow.com/questions/tagged/docker"
}

# template
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
. "$DEV_PATH/bash/template/links.sh"
