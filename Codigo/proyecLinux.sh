#!/bin/bash

source comandos/ayuda.sh
source comandos/infosis.sh
source comandos/fecha_hora.sh
source comandos/buscar.sh
source comandos/creditos.sh
source comandos/juego.sh
source comandos/reproductor.sh

trap '' INT TSTP

echo "Introduce tu usuario y contraseña:"
su -c "whoami"

while true; do
  printf "[%s@%s] " "$(whoami)" "$(basename "$(pwd)")"
  read -a comando
  case "${comando[0]}" in
    ayuda)
      ayuda
      ;;
    infosis)
      infosis
      ;;
    fecha

