#!/bin/bash

LAYOUT_NAME="docker-compose"
LAYOUT_APP="Docker Compose"
LAYOUT_VERSION="24.05.13"
LAYOUT_SEE="https://docs.docker.com/compose/"

# template
DEV_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
. "$DEV_PATH/bash/template/help.sh"
