# ---
# Visual Studio Code installation.
# @see https://code.visualstudio.com/download
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# install
$IS_ROOT apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | $IS_ROOT apt-key add -
$IS_ROOT add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
$IS_ROOT apt install -y code
