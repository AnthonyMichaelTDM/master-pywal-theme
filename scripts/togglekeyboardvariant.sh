#!/bin/bash

### variables
layout="us"
variant1="euro" # default 
variant2="intl"

curr_layout="$(setxkbmap -query | sed -n -e 's/^layout: \+//p')"
curr_variant="$(setxkbmap -query | sed -n -e 's/^variant: \+//p')"
### ensure they're using the proper keyboard layout
if [[ $curr_layout != $layout ]]; then
	exit 1
fi

### figure out the current keyboard variant
if [[ $curr_variant == $variant1 ]]; then
	setxkbmap -variant $variant2
else
	setxkbmap -variant $variant1
fi

echo done

exit 0
