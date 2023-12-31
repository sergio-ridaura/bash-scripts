# ---
# Update Node.js.
# @see https://nodejs.org/
# @see https://www.npmjs.com/package/n
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# update
$IS_ROOT npm install -g n
$IS_ROOT n lts
