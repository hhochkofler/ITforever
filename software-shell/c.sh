#!/bin/bash
trap '' 2  # ignore control + c
while true
do
  clear # clear screen for each loop of menu
  echo "=========================================="
  echo "---- Menu WALL-E manejo motores a paso ---"
  echo "=========================================="
  echo " w AVANZAR:         1 CUADRADO: "
  echo " d DERECHA:         2 APAGAR-LED: "
  echo " a IZQUIERDA:       3 ENCENDER-LED: "
  echo " z ATRAS:           4 AVANZA-POCO: "
  echo " s STOP:            5 ATRAS-POCO: "
  echo " j IZQ-90:          6 VUELTA: "
  echo " l DER-90:          7 HUESO: "
  echo " k VUELTA-180:      8 libre "
  echo " i AVANZA 1mts:     9 libre "
  echo " n IZQ-45:          0 POWEROFF "
  echo " m DER-45:          x SALIR: "
  echo -e "Ingresa tu seleccion aqui y presiona ENTER"
  read answer  # create variable to retains the answer
  case "$answer" in
   w) sh avz.sh ;;
   d) sh rig.sh ;;
   a) sh lef.sh ;;
   z) sh atr.sh ;;
   s) sh stp.sh ;;
   j) sh lef90.sh ;;
   l) sh rig90.sh ;;
   k) sh vuelta.sh ;;
   i) sh avz1m.sh ;;
   n) sh lef45.sh ;;
   m) sh rig45.sh ;;
   1) sh auto03.sh ;;
   2) sh apagar_led.sh ;;
   3) sh encender_led.sh ;;
   4) sh avzfew.sh ;;
   5) sh atrfew.sh ;;
   6) sh auto04.sh ;;
   7) sh auto01.sh ;;
   8) sh ext.sh ;;
   9) sh ext.sh ;;
   0) poweroff  ;; 
   x) sh ext.sh
      exit;;
  esac
#  echo -e "Hit the <return> key to continue.. c"
#  read input ##This cause a pause so we can read the output
#  of the selection before the loop clear the screen
done
