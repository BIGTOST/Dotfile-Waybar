#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if[[$STATUS == *"[MUTED]"*]]; then
   brightnessctl -d "platform::mute" set 1
else
    brightnessctl -d "platform::mute" set 0
fi
