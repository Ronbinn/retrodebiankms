#!/bin/sh

if grep -q 640 /proc/cmdline #ati card
then
    sed -i 's,"2560","1",g' /etc/retroarch.cfg
    sed -i 's,dotclock_min              0,dotclock_min              25.0,g' /etc/switchres.ini
fi


