# ---
# Inkscape uninstall.
# @see https://inkscape.org/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge inkscape
