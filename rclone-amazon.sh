#!/bin/sh
home="/Users/richard" ## note -- this will be run as root, ~ is not your normal user
date
/usr/local/bin/rclone --config "$home/.config/rclone/rclone.conf" --filter-from "$home/Documents/dev/scripts/rclone-filter.txt" sync /Volumes/Movies\ \&\ Photos/media amazon: -v
