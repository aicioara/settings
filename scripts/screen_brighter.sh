#!/bin/bash
screenbrightness=$(cat "/sys/class/backlight/intel_backlight/brightness")
makenow=$((screenbrightness+500))

if [ "$makenow" -lt 5101 ]; then
    echo $makenow >> /sys/class/backlight/intel_backlight/brightness
fi
