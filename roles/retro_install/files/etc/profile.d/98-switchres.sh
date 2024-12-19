#!/bin/sh

if grep -q 640 /proc/cmdline #ati card
then
    sed -i 's,crt_switch_resolution.*,crt_switch_resolution = "4",g' /etc/retroarch.cfg
    sed -i 's,crt_switch_resolution_super.*,crt_switch_resolution_super = "1",g' /etc/retroarch.cfg
    sed -i '24s,monitor.*,monitor generic_15,g' /etc/switchres.ini
    sed -i '41s,lcd_range.*,lcd_range auto,g' /etc/switchres.ini
    sed -i 's,dotclock_min.*,dotclock_min 0,g' /etc/switchres.ini
fi

if grep -q 1280 /proc/cmdline #non ati card
then
    sed -i 's,crt_switch_resolution.*,crt_switch_resolution = "4",g' /etc/retroarch.cfg
    sed -i 's,crt_switch_resolution_super.*,crt_switch_resolution_super = "2560",g' /etc/retroarch.cfg
    sed -i '24s,monitor.*,monitor generic_15,g' /etc/switchres.ini
    sed -i '41s,lcd_range.*,lcd_range auto,g' /etc/switchres.ini
    sed -i 's,dotclock_min.*,dotclock_min 25.0,g' /etc/switchres.ini
fi

if grep -q -v video /proc/cmdline #lcd
then
    sed -i 's,crt_switch_resolution.*,crt_switch_resolution = "0",g' /etc/retroarch.cfg
    sed -i 's,crt_switch_resolution_super.*,crt_switch_resolution_super = "2560",g' /etc/retroarch.cfg
    sed -i '24s,monitor.*,monitor lcd,g' /etc/switchres.ini
    sed -i '41s,lcd_range.*,lcd_range 50-61,g' /etc/switchres.ini
    sed -i 's,dotclock_min.*,dotclock_min 25.0,g' /etc/switchres.ini
fi

#crt_switch_resolution = "0" #off
#crt_switch_resolution = "4" #ini
#crt_switch_resolution_super = "0" #native
#crt_switch_resolution_super = "1" #dynamic
