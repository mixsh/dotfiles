#!/bin/bash

M=$(pacmd list-sources | grep -P "name:.*alsa.*input.usb" | tail -n 1 | perl -pe 's/.*<//g;s/>.*//g')

if [ -z "${M}" ]; then
    # If no device found, exit
    exit 1
fi

pacmd load-module module-remap-source source_name=mono master=$M master_channel_map=front-left,front-right  channel_map=mono,mono
