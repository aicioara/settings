#!/bin/bash

configfile="/home/aicioara/.scripts/variables/backlight"

if [ -f $configfile ]; then
	value=$(cat $configfile)
	echo $value >> /sys/class/backlight/intel_backlight/brightness
fi
