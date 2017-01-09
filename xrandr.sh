#!/usr/bin/env bash

hs=${1}
vs=${2}

modeline=$(cvt $hs $vs | grep "Modeline" | sed 's/Modeline//g')
scr=$(xrandr | grep connected | grep -v disconnected | awk '{print $1}')
mode=$(cvt $hs $vs | grep "Modeline" | awk '{print $2}')

xrandr --newmode $modeline
xrandr --addmode $scr $mode
xrandr --output $scr --mode $mode

