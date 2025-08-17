#!/bin/bash

# exit if a command exits with a non-zero status
set -e 

INSTALL_DIR="$HOME/capenv/install"

echo -e "\nstarting config installer\n"
source $INSTALL_DIR/config/config.sh
source $INSTALL_DIR/config/keyboard-layout.sh
source $INSTALL_DIR/config/amd.sh

echo -e "\nstarting development installer\n"
source $INSTALL_DIR/development/nvim.sh
source $INSTALL_DIR/development/terminal.sh
# source $INSTALL_DIR/development/firewall.sh

echo -e "\ninstalling desktop environment\n"
source $INSTALL_DIR/deskenv/bluetooth.sh
source $INSTALL_DIR/deskenv/desktop.sh
source $INSTALL_DIR/deskenv/fonts.sh
source $INSTALL_DIR/deskenv/hyprecosystem.sh
