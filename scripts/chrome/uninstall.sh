# ---
# Google Chrome uninstall.
# @see hhttps://www.google.com/chrome/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge google-chrome
