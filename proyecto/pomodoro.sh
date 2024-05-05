#!/bin/bash

clear

read -p "Ingresa el tiempo que va a durar el pomodoro (en segundos): " tiempo
echo "Comenzando pomodoro! >> Proximo descanso en $tiempo segundos."
sleep "$tiempo"

espeak -ves "El tiempo ha terminado, ahora puedes descansar, valagardo!"

read -p "Presiona una tecla para continuar..." _
