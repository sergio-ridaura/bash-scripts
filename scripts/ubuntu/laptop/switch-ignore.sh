# ---
# Set the laptop to prevent it from going to sleep when you close the lid.
# @see https://askubuntu.com/questions/1048063/ubuntu-server-how-do-disable-sleep-when-laptop-screen-is-closed-but-allow-scre
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# do not sleep
$IS_ROOT cp /etc/systemd/logind.conf /etc/systemd/logind.conf.old;
$IS_ROOT sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf;
