#!/bin/bash

FILE=config

while IFS= read -r linea; do
    # Verificar si la línea contiene corchetes
    if [[ "$linea" =~ \[.*\] ]]; then
        # Eliminar los corchetes usando sed
        linea_sin_corchetes=$(echo "$linea" | sed 's/\[//g; s/\]//g')

        # Dividir la línea en elementos usando el espacio como delimitador
        IFS=" " read -r -a elementos <<< "$linea_sin_corchetes"

        # Obtener el índice del último elemento
        indice_ultimo=$(( ${#elementos[@]} - 1 ))

        # Obtener el último elemento
        ultimo="${elementos[$indice_ultimo]}"

        # Imprimir el último elemento
        OPCIONES+=("$ultimo")
    fi
done < "$FILE"