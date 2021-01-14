#!/bin/sh

palette="/tmp/palette.png"


if [ ! -n "$3" ] ;then
    width=270
else
    width=$3
fi

filters="fps=15,scale=$width:-1:flags=lanczos"

ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2