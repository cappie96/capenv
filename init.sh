#!/bin/bash

welcome_ansi='

   ______                  _         ____            __   __            
  / ____/___ _____  ____  (_)__     / __ \___  _____/ /__/ /_____  ____ 
 / /   / __ `/ __ \/ __ \/ / _ \   / / / / _ \/ ___/ //_/ __/ __ \/ __ \
/ /___/ /_/ / /_/ / /_/ / /  __/  / /_/ /  __(__  ) ,< / /_/ /_/ / /_/ /
\____/\__,_/ .___/ .___/_/\___/  /_____/\___/____/_/|_|\__/\____/ .___/ 
          /_/   /_/                                            /_/      

'
clear 
echo -e "\n$welcome_ansi\n"

# make sure the system is upto date before continuing
sudo pacman -Syu --noconfirm

paru_prereq() {
    sudo pacman -S curl --noconfirm
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    . "$HOME/.cargo/env"
    sudo pacman -S --needed git base-devel --noconfirm
}

paru_install() {
    cd $HOME
    git clone https://aur.archlinux.org/paru.git 
    cd $aur_helper
    makepkg -si
    cd ..
    rm -rf $aur_helper
}

# set up AUR 
# get the directory this script is run from
current_dir=$(cd $(dirname "${BASH_SOURCE[0]}") &> /dev/null && pwd)
aur_helper=paru

if ! command -v $aur_helper &> /dev/null; then
    paru_prereq 
    if [[ ! -d "$HOME/$aur_helper" ]]; then
        echo -e "\ncloning $aur_helper repo\n"
    else
        echo -e "\n$aur_helper repo already exists, removing...\n"
        rm -rf "$HOME/$aur_helper"
    fi
    paru_install
else
    echo -e "\n$aur_helper already exists\n"
fi

cd $current_dir

echo -e "\nstarting installation\n"
source install.sh
