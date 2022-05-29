#!/bin/bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
    wal -t -e -i $HOME/.config/leftwm/themes/current/backgrounds/ -a 80
        ####wal -t -e -i /usr/share/backgrounds/ -a 80
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill $HOME/.config/leftwm/themes/current/backgrounds/*
      ####feh --randomize --bg-fill /usr/share/backgrounds/*
  fi
fi
