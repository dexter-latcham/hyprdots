#!/bin/env bash
#https://github.com/end-4/dots-hyprland/blob/68c159f210b91f75113d454aab6c5866322334f4/dots/.config/hypr/hyprlock/check-capslock.sh
MAIN_KB_CAPS=$(hyprctl devices | grep -B 6 "main: yes" | grep "capsLock" | head -1 | awk '{print $2}')

if [ "$MAIN_KB_CAPS" = "yes" ]; then
    echo "Caps Lock active"
else
    echo ""
fi
