#!/bin/sh

url="$1"
output="$2"

python linkfinder.py -d -o cli -i $url > $output
