#!/bin/sh

url="$1"
output="$2"

# Remove blank lines and status lines
python linkfinder.py -d -o cli -i $url | sed '/^[[:space:]]*$/d' | sed '/^Running against:/ d' > $output
