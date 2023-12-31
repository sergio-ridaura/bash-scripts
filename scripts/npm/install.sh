# ---
# npm installation.
# @see https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y npm
