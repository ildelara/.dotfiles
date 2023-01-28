#!/bin/bash
declare -A pomo_options
pomo_options["work"]="45"
pomo_options["break"]="10"

if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
	val=$1
	echo $val | lolcat
	timer ${pomo_options["$val"]}m
	notify-send "$val session done"
fi
