# ---
SCRIPT_NAME="node-app_help"
SCRIPT_DESCRIPTION="Node.js help command."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="http://node.org/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# help
if [ "$ARG_BASH_O" != true ]; then
  if command -v node &>/dev/null; then
    node --help
  else
    echo -e "${TEXT_DANGER}ERROR: Node.js is not installed${TEXT_DEFAULT}"
  fi
fi
