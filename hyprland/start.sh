#!/usr/bin/env bash

swww init &
swww /home/jack/.dotfiles/hyprland/wallpapers/BackgroundAsteroidBlue.jpg

nm-applet --indicator &

waybar &
dunst
