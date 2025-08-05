#!/bin/bash

conf="/etc/vconsole.conf"
hyprconf="$HOME/.config/hypr/hyprland.conf"

layout=$(grep '^XKBLAYOUT=' "$conf" | cut -d= -f2 | tr -d '"')

sed -i "/^[[:space:]]*kb_layout *= ../i\    kb_layout = $layout" "$hyprconf"

