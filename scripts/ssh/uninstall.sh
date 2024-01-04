# ---
# SSH uninstall.
# @see https://www.openssh.com/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge ssh
