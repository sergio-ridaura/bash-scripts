# ---
# Fail2ban uninstall.
# @see http://www.fail2ban.org/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# uninstall
$IS_ROOT apt autoremove --purge fail2ban
