#!/bin/sh

MONITORS=$(xrandr -d :0 -q | grep ' connected' | wc -l)
NUM=2

if [ ${MONITORS} = $NUM ]
  then
    xrandr --output eDP-1-1 --mode 1920x1080 --pos 1440x0 --rotate normal --output HDMI-0 --mode 1440x900 --primary --pos 0x0 --rotate normal --left-of eDP-1-1
else 
    xrandr --output HDMI-0 --off --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
fi
