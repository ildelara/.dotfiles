#!/bin/bash

pidof dunst && killall dunst
dunst &

notify-send "System" "dunst started"
