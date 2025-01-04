#!/bin/sh

#unmute audio and set volume
pactl set-sink-volume @DEFAULT_SINK@ 80%
pactl set-sink-mute @DEFAULT_SINK@ 0

if [ "$(tty)" == "/dev/tty1" ] ; then
    retroarch
fi

