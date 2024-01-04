# ---
# Microsoft Edge uninstall.
# @see https://www.microsoft.com/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge microsoft-edge
