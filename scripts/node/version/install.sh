# ---
# Install Node.js version.
# @see https://github.com/tj/n
# @parameter $1 version 
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# update
$IS_ROOT npm install -g n
$IS_ROOT n $1
