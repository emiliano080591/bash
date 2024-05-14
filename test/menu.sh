#!/bin/bash

# Carga los colores para imprimir en pantalla
source "constants.sh"

# Imprimir todos los elementos del array
for indice in "${!OPCIONES[@]}"; do
    echo -e "${verde} $((indice + 1)) -> ${OPCIONES[$indice]} ${reset}"
done
