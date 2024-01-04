# ---
# Zip installation.
# @see https://en.wikipedia.org/wiki/Zip_(file_format)
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y zip
