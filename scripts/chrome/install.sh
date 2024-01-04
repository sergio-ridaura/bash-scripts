# ---
# Google Chrome installation.
# @see https://www.google.com/chrome/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
$IS_ROOT apt update
$IS_ROOT apt install -y libappindicator1
$IS_ROOT dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
