#!/bin/bash

clear

read -p "Que quiere mover de ~/Downloads? (1-Imagenes, 2-Videos):" respuesta

case "$respuesta" in
    1) for archivo in $(ls ~/Downloads/ | grep -E "[[:alnum]]*\(png|jpg)"); do
            mv ~/Downloads/"$archivo" ~/Pictures 
       done
    ;;
    2) for archivo in $(ls ~/Downloads/ | grep -E "[[:alnum]]*\(mov|mp4)"); do
            mv ~/Downloads/"$archivo" ~/Movies 
       done
    ;;
    *) echo "Opcion invalida"
    ;;
esac

read -p "Presiona una tecla para continuar..." _