#!/usr/bin/env bash

isStack=$(yabai -m query --windows --window | jq '."stack-index"')

if [ $isStack -eq 0 ]
then
  windowId=$(yabai -m query --windows --window | jq -r '.id')
  # 优先和上面或者下面的窗口stack，其次和左右的窗口stack
  yabai -m window north --stack $windowId \
  || yabai -m window south --stack $windowId \
  || yabai -m window west --stack $windowId \
  || yabai -m window east --stack $windowId
else
  echo "haha"
  yabai -m window --toggle float && yabai -m window --toggle float
fi
