#!/bin/bash
keybrightness=$(cat "/sys/class/leds/asus::kbd_backlight/brightness")
makenow=$((keybrightness-1))

if [ "$makenow" -gt -1 ]; then
    echo $makenow >> /sys/class/leds/asus::kbd_backlight/brightness
fi
