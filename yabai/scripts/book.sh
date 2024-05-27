#!/bin/bash
# 获取当前激活的窗口ID
active_window_id=\$(yabai -m query --windows --window | jq -r '.id')

# 获取Books应用中，标题为"All"的窗口ID
all_window_id=\$(yabai -m query --windows | jq -r 'map(select(.app == "Books" and .title == "All")) | .[0].id')

# 如果当前激活窗口是Books且不是标题为"All"的窗口，并且存在标题为"All"的窗口
if [[ "\$active_window_id" != "\$all_window_id" && ! -z "\$all_window_id" ]]; then
  # 将标题为"All"的窗口后置
  yabai -m window "\$all_window_id" --send-to-back
fi


