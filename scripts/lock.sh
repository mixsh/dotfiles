#!/bin/bash

rm -f /tmp/screen.png
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% -colorspace Gray -gamma 0.9 /tmp/screen.png

# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

i3lock -e -u -n -i /tmp/screen.png
