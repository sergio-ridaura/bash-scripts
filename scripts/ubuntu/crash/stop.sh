# ---
# Clear crash logs and stop record.
# @see https://askubuntu.com/questions/93457/how-do-i-enable-or-disable-apport
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# script path
SCRIPT_ADDRESS="$(cd "$(dirname "$0")" && pwd)"

# clean and stop
$SCRIPT_ADDRESS/clean.sh
$IS_ROOT cp /etc/default/apport /etc/default/apport.old
$IS_ROOT sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
