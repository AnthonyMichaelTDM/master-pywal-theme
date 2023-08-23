#!/bin/bash

### variables
layout="us"
variant="intl"

curr_layout="$(setxkbmap -query | sed -n -e 's/^layout: \+//p')"
curr_variant="$(setxkbmap -query | sed -n -e 's/^variant: \+//p')"
### ensure they're using the proper keyboard layout
if [[ $curr_layout != $layout ]]; then
	exit 1
fi

### figure out the current keyboard variant
if [[ $curr_variant == $variant ]]; then
	setxkbmap -layout $layout
else
	setxkbmap -variant $variant
fi

echo done

exit 0