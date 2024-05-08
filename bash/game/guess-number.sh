#!/bin/bash

SCRIPT_NAME="game_guess-number"
SCRIPT_DESCRIPTION="Game you have to guess a number."
SCRIPT_DESCRIPTION_ES="Juego que tienes de adivinar un número."
SCRIPT_VERSION="24.05.08"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# functions
INITIAL_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}¡Bienvenido a un juego de adivinanzas!\n"
    echo -e "${TEXT_MUTED}${SCRIPT_DESCRIPTION_ES}${TEXT_DEFAULT}\n"
    echo "Estoy pensando en un número entre 1 y 100. ¡Adivina cuál es!"
  else
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}Welcome to a guessing game!\n"
    echo -e "${TEXT_MUTED}${SCRIPT_DESCRIPTION_ES}${TEXT_DEFAULT}\n"
    echo "I'm thinking of a number between 1 and 100. Guess what it is!"
  fi
}

QUESTION_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    read -p "Introduce tu suposición: " guess
  else
    read -p "Enter your guess: " guess
  fi
}

ERROR_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_RED}Por favor, introduce un número válido.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_RED}Please enter a valid number.${TEXT_DEFAULT}\n"
  fi
}

SUCCESS_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_GREEN}¡Felicidades! Has adivinado el número correctamente.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_GREEN}Congratulations! You guessed the number correctly.${TEXT_DEFAULT}\n"
  fi
}

HIGH_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_YELLOW}Demasiado alto. Intenta de nuevo.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_YELLOW}Too tall. Try again.${TEXT_DEFAULT}\n"
  fi
}

LOW_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_YELLOW}Demasiado bajo. Intenta de nuevo.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_YELLOW}Too low. Try again.${TEXT_DEFAULT}\n"
  fi
}

# game
if [ "$ARG_BASH_I" != true ]; then

  number=$((RANDOM % 100 + 1))

  INITIAL_TEXT

  while true; do
    QUESTION_TEXT

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
      ERROR_TEXT
      continue
    fi

    if ((guess < number)); then
      LOW_TEXT
    elif ((guess > number)); then
      HIGH_TEXT
    else
      SUCCESS_TEXT
      break
    fi
  done
fi
