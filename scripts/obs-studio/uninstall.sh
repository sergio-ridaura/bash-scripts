# ---
# OBS Studio uninstall.
# @see https://obsproject.com/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge obs-studio
