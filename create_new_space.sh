#!/usr/bin/env bash
#
if [ ${1:-} = "1" ]; then
  moveCurrentWindow="yes"
fi

yabai -m space --create

[[ ! -z $moveCurrentWindow ]] && windowId="$(yabai -m query --spaces --display | jq 'map(select(."has-focus"))[-1].id')"
spaceIndex="$(yabai -m query --spaces --display | jq 'map(select (."is-native-fullscreen" == false))[-1].index')"

if [[ ! -z $moveCurrentWindow && ! -z $windowId && $windowId != 'null' ]]
then
  yabai -m window --space ${spaceIndex}
fi

yabai -m space --focus ${spaceIndex}
