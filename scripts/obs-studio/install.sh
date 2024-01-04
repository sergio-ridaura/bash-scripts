# ---
# OBS Studio installation.
# @see https://obsproject.com/download/
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT add-apt-repository ppa:obsproject/obs-studio
$IS_ROOT apt update
$IS_ROOT apt install -y obs-studio
