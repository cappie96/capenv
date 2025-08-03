#!/bin/bash

# exit if a command exits with a non-zero status
set -e 

INSTALL_DIR="$HOME/capenv/install"

echo "\nstarting config installer"
source $INSTALL_DIR/config/
