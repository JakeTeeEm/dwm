#!/bin/bash

# Configure Screen Position
# xrandr --output HDMI-1 --primary --auto --mode 1920x1080 --rate 100.00 --output HDMI-0 --mode 1920x1080 --rate 100.00 --right-of HDMI-1 --output DP-0 --mode 1280x1024 --rate 75.02 --right-of HDMI-0
## NOTE:  Found nvidia-settings :)

# Start picom
# See ~/.config/picom.conf for configuration
picom &

# Set background image
feh --bg-fill ~/Akko/Background/wallhaven-zm9x9y.png

# Start slstatus
slstatus &
