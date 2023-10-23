#!/bin/bash
trap '' 2  # ignore control + c
while true
do
  clear # clear screen for each loop of menu
  echo "================="
  echo "---- Menu WALL-E manejo motores a paso ---"
  echo  "================="
  echo "Pulsa 1 AVANZAR:"
  echo "Pulsa 2 DERECHA:"
  echo "Pulsa 3 IZQUIERDA:"
  echo "Pulsa 4 ATRAS:"
  echo "Pulsa 5 STOP:"
  echo "Pulsa q SALIR:"
  echo -e "Ingresa tu seleccion aqui y presiona ENTER"
  read answer  # create variable to retains the answer
  case "$answer" in
   1) sh avz.sh ;;
   2) sh rig.sh ;;
   3) sh lef.sh ;;
   4) sh atr.sh ;;
   5) sh stp.sh ;;
   q) sh ext.sh 
      exit;;
  esac
#  echo -e "Hit the <return> key to continue.. c"
#  read input ##This cause a pause so we can read the output
  #of the selection before the loop clear the screen
done
