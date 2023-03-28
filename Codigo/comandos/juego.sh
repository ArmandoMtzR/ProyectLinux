#!/bin/bash

function juego() {
# Genera un número aleatorio entre 1 y 100
numero_secreto=$(shuf -i 1-100 -n 1)

# Inicializa el número de intentos
intentos=0

# Bucle principal del juego
while true; do
    # Pide al usuario que introduzca un número
    printf "Adivina el número secreto (1-100): "
    read -r numero_usuario

    # Incrementa el número de intentos
    intentos=$((intentos + 1))

    # Comprueba si el número introducido por el usuario es igual al número secreto
    if [ "$numero_usuario" -eq "$numero_secreto" ]; then
        echo "¡Felicidades! Has adivinado el número secreto en $intentos intentos."
        break
    elif [ "$numero_usuario" -lt "$numero_secreto" ]; then
        echo "El número secreto es mayor que $numero_usuario."
    else
        echo "
}
