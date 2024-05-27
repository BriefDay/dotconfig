#! /usr/bin/env zsh

If no window on the current space is focused after a window is destroyed or
minimized, or an application is hidden, focus the window under the cursor.
yabai -m signal --add event=window_destroyed \
  action="${functions[focus_under_cursor]}"
yabai -m signal --add event=window_minimized \
  action="${functions[focus_under_cursor]}"
yabai -m signal --add event=application_hidden \
  action="${functions[focus_under_cursor]}"

function focus_under_cursor {
  if yabai -m query --windows --space |
      jq -er 'map(select(.focused == 1)) | length == 0' >/dev/null; then
    yabai -m window --focus mouse 2>/dev/null || true
  fi
}



