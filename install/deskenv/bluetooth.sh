#!/bin/bash

# install the blueberry bluetooth package
paru -S --noconfirm blueberry

# enable the bluetooth service 
sudo systemctl enable --now bluetooth.service
