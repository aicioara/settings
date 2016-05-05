#!/bin/bash

touchpadState=$(synclient -l | grep TouchpadOff | awk '{print $3}')

if [ "$touchpadState" = "1" ]; then
    touchpadState="0"
    notify-send -t 500 -i input-touchpad "ON"
else
    touchpadState="1"
    notify-send -t 500 -i input-touchpad "OFF"
fi

cmd="synclient TouchpadOff=$touchpadState"
$cmd
