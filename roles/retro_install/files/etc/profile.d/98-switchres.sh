#!/bin/sh

if [ ! -f /etc/switchres.ini ]; then

  echo "There is no switchres.ini generating one..."
  if grep -q lcd /proc/cmdline
  then
     ln -s /etc/switchres_lcd.ini /etc/switchres.ini
  fi

  if grep -q vga /proc/cmdline
  then
     ln -s /etc/switchres_arcade_31.ini /etc/switchres.ini
  fi

  if grep -q ati /proc/cmdline
  then
     ln -s /etc/switchres_generic_15_ati.ini /etc/switchres.ini
  fi

  if grep -q intel /proc/cmdline
  then
     ln -s /etc/switchres_generic_15_intel.ini /etc/switchres.ini
  fi
fi


