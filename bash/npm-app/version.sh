# ---
SCRIPT_NAME="npm-app_version"
SCRIPT_DESCRIPTION="Get Npm application version."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="https://docs.npmjs.com/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# version
if [ "$ARG_BASH_O" != true ]; then
  if command -v npm &>/dev/null; then
    npm --version
  else
    echo -e "${TEXT_DANGER}ERROR: Npm is not installed${TEXT_DEFAULT}"
  fi
fi
