#!/bin/bash

# Carga los colores para imprimir en pantalla
source "constants.sh"

OPCIONES=()

# Llama el código que lee y genera las opciones
source "debug_file.sh"

numero_de_elementos=${#OPCIONES[@]}
echo "${numero_de_elementos}"

OPCION_INVALIDA=""

while true; do
    clear
    if [ -n "$OPCION_INVALIDA" ]; then
        echo -e "${rojo} ${OPCION_INVALIDA} ${reset}"
    fi
    
    source "menu.sh"
    read -p "Ingresa una opcion, 'control + C' para terminar:"
    
    if [[ $REPLY -lt 1 || $REPLY -gt $numero_de_elementos && $REPLY != "" ]]; then
        OPCION_INVALIDA="Opcion invalida"
    else    
        # TODO: Aca va el código para cargar las variables y ejecutar los comandos de AWS CLI
        break
    fi
done