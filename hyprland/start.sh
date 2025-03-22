#!/usr/bin/env bash
XDG_CONFIG_HOME=$HOME/.config

######################################
#      Hyprland Support apps         #
######################################
swww init &
swww img /home/jack/.dotfiles/hyprland/wallpapers/BackgroundAsteroidBlue.jpg
nm-applet --indicator &
waybar &
dunst
