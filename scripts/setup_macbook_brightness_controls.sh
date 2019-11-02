#!/bin/bash

# https://github.com/harttle/macbook-lighter
sudo cp 90-backlight.rules /etc/udev/rules.d
sudo cp 91-leds.rules /etc/udev/rules.d
sudo usermod -a -G video $USER
