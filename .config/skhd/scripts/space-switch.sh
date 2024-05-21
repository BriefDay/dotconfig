#!/bin/zsh

# space=$1
#
# yabai -m display --focus $(yabai -m query --spaces --space $space | jq .display)
# yabai -m space --focus $space
#

# 获取命令行参数中指定的空间编号
space=$1

# 移动当前聚焦的窗口到指定的空间
/opt/homebrew/bin/yabai -m window --space $space

# 延时确保窗口移动完成
sleep 0.1

# 查询该空间所在的显示器编号，然后聚焦到该显示器
display_id=$(/opt/homebrew/bin/yabai -m query --spaces --space $space | jq -r '.display')
/opt/homebrew/bin/yabai -m display --focus $display_id

# 再次延时确保显示器焦点切换完成
sleep 0.1

# 聚焦到指定的空间
/opt/homebrew/bin/yabai -m space --focus $space

