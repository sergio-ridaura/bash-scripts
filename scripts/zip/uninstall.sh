# ---
# Zip uninstall.
# @see https://en.wikipedia.org/wiki/Zip_(file_format)
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge zip
