# ---
SCRIPT_NAME="node-app_links"
SCRIPT_DESCRIPTION="List of help links for Node.js application."
SCRIPT_VERSION="24.3.30"
SCRIPT_SEE="http://node.org/"
# ---

# tools
. "$(dirname "$0")/../../scripts/tools.sh"

# links
if [ "$ARG_BASH_O" != true ]; then
  echo "\
- Official website    http://node.org/
- Documentation       https://nodejs.org/docs/latest/api/
- Repository          https://github.com/nodejs/node
- Wikipedia           https://en.wikipedia.org/wiki/Node.js
- Stack Overflow      https://stackoverflow.com/questions/tagged/node"
fi
