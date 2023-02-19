#!/bin/sh

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar top -c $(dirname $0)/config.ini &
#polybar bottom -c $(dirname $0)/config.ini &
#polybar bottom-left -c $(dirname $0)/config2.ini &


echo "Polybar launched..."
