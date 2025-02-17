#!/bin/bash
PATH=$PATH:~/.local/bin

current_space_index="$(yabai -m query --spaces --space | jq '.index')"
recent_space_index="$(yabai -m query --spaces --space recent | jq '.index')"

if [[ -z $recent_space_index || "0" = $recent_space_index ]]; then
  yabai -m space --focus prev || yabai -m space --focus last
else
  yabai -m space --focus recent
fi

yabai -m space "${current_space_index}" --destroy
spacebar -m config spaces on
