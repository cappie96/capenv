#!/bin/bash

paru -S --noconfirm linux-headers mesa

MKINITCPIO_CONF="/etc/mkinitcpio.conf"
AMD_MODULES="amdgpu radeon"

sudo sed -i -E "s/^(MODULES=\\()/\\1${AMD_MODULES} /" "$MKINITCPIO_CONF"
sudo mkinitcpio -P
