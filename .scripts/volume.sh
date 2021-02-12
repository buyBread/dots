#!/bin/bash

VOLUME=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')

echo "Volume: ${VOLUME}"
