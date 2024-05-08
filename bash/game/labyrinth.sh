#!/bin/bash

SCRIPT_NAME="game_labyrinth"
SCRIPT_DESCRIPTION="Maze game."
SCRIPT_DESCRIPTION_ES="Juego del laberinto."
SCRIPT_VERSION="24.05.08"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# functions
INITIAL_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}¡Bienvenido al juego del laberinto!\n"
    echo -e "${TEXT_MUTED}Consigue llegar a la X utilizando las teclas WASD.${TEXT_DEFAULT}\n"
  else
    echo -e "\n${TEXT_ORANGE}${TEXT_BOLD}Welcome to the maze game!\n"
    echo -e "${TEXT_MUTED}Get to the X using the WASD keys.${TEXT_DEFAULT}\n"
  fi
}

SUCCESS_TEXT() {
  if [ "$(echo "$LANG" | cut -d '_' -f 1)" == "es" ]; then
    echo -e "\n${TEXT_GREEN}¡Felicitaciones has ganado!${TEXT_DEFAULT}\n"
  else
    echo -e "\n${TEXT_GREEN}Congratulations, you won!${TEXT_DEFAULT}\n"
  fi
}

maze=(
  "#############################"
  "#             #        X #  #"
  "#   ########  #  #########  #"
  "#   #         #  #          #"
  "#   #  ########  #  ######  #"
  "#   #         #          #  #"
  "#   #####  ###############  #"
  "#       #     #       #     #"
  "############  #  ######  ####"
  "#          #  #  #          #"
  "#  #  ######  #  #  #########"
  "#  #          #  #          #"
  "#  #########  #  #########  #"
  "#          #                #"
  "#############################"
)

posX=1
posY=1
goalX=23
goalY=1

# game
while true; do
  INITIAL_TEXT
  for ((y = 0; y < ${#maze[@]}; y++)); do
    for ((x = 0; x < ${#maze[$y]}; x++)); do
      if [[ $x -eq $posX && $y -eq $posY ]]; then
        echo -en "${TEXT_YELLOW}@${TEXT_DEFAULT}"
      elif [[ $x -eq $goalX && $y -eq $goalY ]]; then
        echo -en "${TEXT_RED}X${TEXT_DEFAULT}"
      else
        echo -en "${maze[$y]:$x:1}"
      fi
    done
    echo
  done

  if [[ $posX -eq $goalX && $posY -eq $goalY ]]; then
    SUCCESS_TEXT
    exit
  fi

  read -rsn1 move

  case $move in
  w)
    [[ "${maze[$((posY - 1))]:posX:1}" != "#" ]] && posY=$((posY - 1))
    ;;
  s)
    [[ "${maze[$((posY + 1))]:posX:1}" != "#" ]] && posY=$((posY + 1))
    ;;
  a)
    [[ "${maze[posY]:$((posX - 1)):1}" != "#" ]] && posX=$((posX - 1))
    ;;
  d)
    [[ "${maze[posY]:$((posX + 1)):1}" != "#" ]] && posX=$((posX + 1))
    ;;
  esac

  clear
done
