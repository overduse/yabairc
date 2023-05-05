#!/usr/bin/env bash

window_id="${YABAI_WINDOW_ID:-}"

read -r subrole sticky floating <<< $(echo $(yabai -m query --windows --window $window_id | jq -r '.subrole, ."is-sticky", ."is-floating"'))

if [[ "AXSystemDialog" = "$subrole" ]]; then
    exit 0
fi

if [[ "true" = $floating ]]; then
  yabai -m config active_window_border_color 0x817aa2f7
elif [[ "true" = $sticky ]]; then
  yabai -m config active_window_border_color 0x72565f89
else
  yabai -m config active_window_border_color 0x72565f89
fi
