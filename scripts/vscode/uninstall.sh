# ---
# Visual Studio Code uninstall.
# @see https://code.visualstudio.com/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge code
