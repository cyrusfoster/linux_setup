#!/bin/bash

# will throw an error if mode already exists

sudo xrandr --newmode "1280x800" $(cvt 1280 800 60 | sed -n 2p | cut -d\  -f3-)
sudo xrandr --addmode eDP1 1280x800
sudo xrandr --addmode DP2 1280x800

