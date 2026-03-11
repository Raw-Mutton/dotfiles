#!/bin/bash

# Play a sound for every notification
# Note that this requires you to add any sound to the sounds/ directory!
#
# Execute the script from swaync config using regex

if [ $(swaync-client -D) = false ]; then
  mpv --no-terminal ~/.config/swaync/sounds/notification.ogg
fi
