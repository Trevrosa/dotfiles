#!/usr/bin/env bash

title="^Extension: \(Bitwarden Password Manager\)"

function handle {
    # len title = 13
  if [[ ${1:0:13} == "windowtitlev2" ]]; then
    window=address:0x${1:15:12} # len title + len >>, len addr
    if [[ ${1:28} =~ $title ]]; then # len title + len >> + len addr + len ,
      echo "success"
      hyprctl dispatch setfloating $window
      #hyprctl dispatch resizewindowpixel exact 300 1080,$window
      #hyprctl dispatch movewindowpixel exact 2048 72,$window
    fi
  fi
}

socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
