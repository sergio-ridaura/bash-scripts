# ---
# Get path of current script when executed.
# @see https://stackoverflow.com/questions/2465161/how-to-get-the-full-pathname-of-the-current-shell-script
# ---

# script path
SCRIPT_ADDRESS="$(cd "$(dirname "$0")" && pwd)"
