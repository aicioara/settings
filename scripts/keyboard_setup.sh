#!/bin/bash

configfile="/home/aicioara/.scripts/variables/leds"

if [ -f $configfile ]; then
	value=$(cat $configfile)
	echo $value >> /sys/class/leds/asus::kbd_backlight/brightness
fi
