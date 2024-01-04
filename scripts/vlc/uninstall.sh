# ---
# VLC uninstall.
# @see https://www.videolan.org/vlc/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge vlc
