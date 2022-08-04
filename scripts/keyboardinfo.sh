#!/bin/bash

### variables
layout="$(setxkbmap -query | sed -n -e 's/^layout: \+//p')"
variant="$(setxkbmap -query | sed -n -e 's/^variant: \+//p')"

### return formatted keyboard info
echo "${layout}-${variant}"

exit 0
