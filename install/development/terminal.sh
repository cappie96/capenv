#!/bin/bash

paru -S --noconfirm \
    wget unzip man-db inetutils impala\
    wl-clipboard btop \
    eza fzf yazi ripgrep bat jq starship stow \
    kitty

# inetutils installs network tools such as ifconfig traceroute etc
# impala installs a Wifi TUI
