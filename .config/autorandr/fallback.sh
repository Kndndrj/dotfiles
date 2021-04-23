#!/bin/sh

echo "Xft.dpi: 150" | xrdb -merge

# Reset the background
$HOME/.fehbg &

### MONITORS ###
bspc monitor -d 1 2 3 4 5 6 7 8 9 10

# bspwm border settings
bspc config border_width                3
bspc config window_gap                  3
bspc config top_padding                 40

# List of programs to start
# Add multiple instances of the same program next to eachother
# and put "heavy" programs at the end
$HOME/.config/autorandr/programs_autorestart.sh \
"dunst -geom 500x0-4+35" \
"polybar lodpi_fixed"
