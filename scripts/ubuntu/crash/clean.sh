# ---
# Clear crash logs.
# @see https://askubuntu.com/questions/1160113/system-program-problem-detected
# ---

# are you sudo?
if [ "$(whoami)" != "root" ]; then
  IS_ROOT="sudo"
fi

# clean 
$IS_ROOT rm /var/crash/*
