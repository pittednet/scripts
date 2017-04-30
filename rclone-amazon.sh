#!/bin/sh
## (date && rclone --filter-from rclone-filter.txt sync /Volumes/Movies\ \&\ Photos/media amazon: -v) 2>> rclone-amazon.log

#!/bin/sh
home="/Users/richard" ## note -- this will be run as root, ~ is not your normal user
now=$(date "+%Y-%m-%d %H.%M.%S")
echo $now >> "$home/Desktop/TestFile.txt"
date
/usr/local/bin/rclone --config "/Users/richard/.config/rclone/rclone.conf" --filter-from "$home/Documents/dev/scripts/rclone-filter.txt" sync /Volumes/Movies\ \&\ Photos/media amazon: -v