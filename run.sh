#!/bin/sh

url="$1"
output="$2"

# The first line is the parent endpoint
echo $url > $output
# Remove blank lines and status lines
python linkfinder.py -d -o cli -i $url | sed '/^[[:space:]]*$/d' | sed '/^Running against:/ d' >> $output
