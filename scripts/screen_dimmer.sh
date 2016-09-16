#!/bin/bash
screenbrightness=$(cat "/sys/class/backlight/intel_backlight/brightness")
makenow=$((screenbrightness-500))

if [ "$makenow" -gt 49 ]; then
    echo $makenow >> /sys/class/backlight/intel_backlight/brightness
fi
