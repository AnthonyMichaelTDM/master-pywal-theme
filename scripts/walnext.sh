#!/bin/bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
  #use pywal to generate color schemes for almost everything
  wal --iterative -i $HOME/.config/leftwm/themes/current/backgrounds/ -a 80
      ####wal --iterative -i /usr/share/backgrounds/ -a 80
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill $HOME/.config/leftwm/themes/current/backgrounds/*
      ####feh --randomize --bg-fill /usr/share/backgrounds/*
  fi
fi
