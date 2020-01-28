#!/bin/bash

echo $1

if [ "$1" == "on" ]; then
    synclient TouchpadOff=0
else
    synclient TouchpadOff=1
fi
