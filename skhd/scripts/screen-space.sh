#!/bin/bash

# 获取 iTerm2 的窗口 ID
window_id=$(yabai -m query --windows | jq '.[] | select(.app == "iTerm2") | .id')

# 获取该窗口所在的空间 ID
space_id=$(yabai -m query --windows --window $window_id | jq '.space')

# 切换到该空间
yabai -m space --focus $space_id

