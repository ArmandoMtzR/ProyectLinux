#!/bin/bash

trap '' INT TSTP # Desactiva Ctrl+C y Ctrl+Z

function ayuda() {
  echo "Comandos disponibles:"
  echo "ayuda: muestra esta ayuda"
  echo "infosis: muestra información del sistema"
  echo "fecha_hora: muestra la fecha y hora actual"
  echo "buscar <directorio> <archivo>: busca un archivo en un directorio específico"
  echo "salir: salir de la terminal personalizada"
}

function infosis() {
  echo "Memoria RAM:"
  free -h | grep -i mem | awk '{print $2}'
  echo "Arquitectura del sistema:"
  uname -m
  echo "Versión del SO:"
  uname -r
}

function fecha_hora() {
  date '+%Y-%m-%d %H:%M:%S'
}

function buscar() {
  if [ $# -ne 2 ]; then
    echo "Uso: buscar <directorio> <archivo>"
    return
  fi
  find $1 -type f -name $2 2>/dev/null
}

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
    fecha_hora)
      fecha_hora
      ;;
    buscar)
      buscar "${comando[1]}" "${comando[2]}"
      ;;
    salir)
      exit 0
      ;;
    *)
      "${comando[@]}"
      ;;
  esac
done
