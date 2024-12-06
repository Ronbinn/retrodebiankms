#!/bin/sh

if [ "$(tty)" == "/dev/tty1" ] ; then
    switchres 320 240 60 -s --ini /etc/switchres.ini --launch mymenu
fi

