#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log /tmp/polybar4.log
polybar HDMI 2>&1 | tee -a /tmp/polybar1.log & disown
polybar eDP 2>&1 | tee -a /tmp/polybar2.log & disown
polybar HDMI_bottom 2>&1 | tee -a /tmp/polybar3.log $ disown
polybar eDP_bottom 2>&1 | tee -a /tmp/polybar4.log $ disown

echo "Bars launched..."
