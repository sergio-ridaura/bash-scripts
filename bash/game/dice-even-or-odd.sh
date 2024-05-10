#!/bin/bash

SCRIPT_NAME="game_dice-even-or-odd"
SCRIPT_DESCRIPTION="Game in which you have to guess if the sum of two dice results is even or odd."
SCRIPT_DESCRIPTION_ES="Juego que tienes de adivinar si la suma de dos resultados de dados es par o impar."
SCRIPT_VERSION="24.05.10"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# functions
ROLL_DIE() {
  echo $((1 + RANDOM % 6))
}

EVEN_OR_ODD() {
  if [ $(($1 % 2)) -eq 0 ]; then
    if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
      echo "par"
    else
      echo "even"
    fi
  else
    if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
      echo "impar"
    else
      echo "odd"
    fi
  fi
}

INITIAL_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}¡Bienvenido a un juego de dados!\n"
    echo -e "${TEXT_MUTED}${SCRIPT_DESCRIPTION_ES}${TEXT_DEFAULT}\n"
    echo "Tu primer lanzamiento fue: $die1"
    read -p "¿Crees que la próxima tirada será par o impar? (par/impar): " choice
    echo -e "\nLa segunda tirada fue: $die2\n"
  else
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}Welcome to a dice game!\n"
    echo -e "${TEXT_MUTED}${SCRIPT_DESCRIPTION}${TEXT_DEFAULT}\n"
    echo "Your first roll was: $die1"
    read -p "Do you think the next roll will be even or odd? (even/odd): " choice
    echo -e "\nThe second roll was: $die2\n"
  fi
}

SUCCESS_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_GREEN}¡Felicidades! Adivinó correctamente.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_GREEN}Congratulations! You guessed correctly.${TEXT_DEFAULT}\n"
  fi
}

FAILED_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "${TEXT_RED}Lo siento, fallaste. La suma fue $result.${TEXT_DEFAULT}\n"
  else
    echo -e "${TEXT_RED}Sorry, you failed. The sum was $result.${TEXT_DEFAULT}\n"
  fi
}

# game
if [ "$ARG_BASH_H" != true ]; then

  die1=$(ROLL_DIE)
  die2=$(ROLL_DIE)
  sum=$((die1 + die2))
  result=$(EVEN_OR_ODD $sum)

  INITIAL_TEXT

  if [ "$choice" == "$result" ]; then
    SUCCESS_TEXT
  else
    FAILED_TEXT
  fi
fi
