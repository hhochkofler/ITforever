#!/bin/bash
#### EXIT (funcion)
#### Funcion EXIT (EXT) apaga los motores y sale del menu
#### Rutinas a ser llamadas desde putty o python web service para APP
#### Creado por Heinrich Hochkofler 20/09/2021
#### Son 2 scripts (uno para cada motor de paso)
#### stepper_der_avz.py
#### stepper_izq_avz.py
#
# Detiene los motores de paso duerme 1 seg y los coloca en modo AVANCE a la velocidad predeterminada.
# Mata 2 procesos python (izquierdo y derecho), espera 1 seg y corre 2 adicionales de  EXIT.
#
kill $(ps -ef | grep python | grep stepper | grep der | grep -v sudo | grep -v motioneye | awk '{print $1}')
kill $(ps -ef | grep python | grep stepper | grep izq | grep -v sudo | grep -v motioneye | awk '{print $1}')
# sleep 1
nohup  python /data/scripts/wall-e/manual02/stepper_der_ext.py >> /dev/null &
nohup  python /data/scripts/wall-e/manual02/stepper_izq_ext.py >> /dev/null &
