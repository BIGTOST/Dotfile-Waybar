#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

STATUS =$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)

if[[$STATUS == *"[MUTED]"*]]; then
    brightnessctl -d "platform::micmute" set 1
else 
    brightnessctl -d "platform::micmute" set 0
fi
