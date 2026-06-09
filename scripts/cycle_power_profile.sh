#!/bin/bash

CURRENT_PROFILE=$(powerprofilesctl get)

if [ "$CURRENT_PROFILE" = "balanced"]; then
    powerprofilesctl set performace
    notify-send -i "power-profile-performance" "Perfil de Energia" "Modo Performance"
elif ["$CURRENT_PROFILE" = "performance"]; then
    powerprofilesctl set power-saver
    notify-send -i "power-profile-power-saver" "Perfil de Energia" "Modo Poupança de Energia"
else
    powerprofilesctl set balanced
    notify-send -i "power-profile-balanced" "Perfil de Energia" "Modo Equilibrado o o u "
fi
