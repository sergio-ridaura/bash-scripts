#!/bin/bash

SCRIPT_NAME="file_text_secret_encrypt"
SCRIPT_DESCRIPTION="Encrypts the content of a text file."
SCRIPT_DESCRIPTION_ES="Encripta el contenido de un archivo de texto."
SCRIPT_VERSION="24.06.16"
SCRIPT_SEE="https://opensource.com/article/21/4/encryption-decryption-openssl"
SCRIPT_ARG=(input output password)

# tools
. "$(dirname "$0")/../../../bash-utilities.sh"

# arguments
[ $# -ge 1 ] && input="$1" || ERROR_ARGUMENT_MISSING 0

[ $# -ge 2 ] && output="$2" || ERROR_ARGUMENT_MISSING 1

[ $# -ge 3 ] && password="$3" || ERROR_ARGUMENT_MISSING 2

# encrypt
if [ "$ARG_BASH_H" != true ]; then
  openssl enc -aes-256-cbc -salt -in $input -out $output -pbkdf2 -k $password
fi
