#!/bin/sh

if [ "$(tty)" == "/dev/tty1" ] ; then
    retroarch
    #startx
fi

