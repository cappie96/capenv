#!/bin/bash

# check whether ufw is available
if ! command -v ufw &> /dev/null; then
    paru -S --noconfirm ufw

    sudo ufw default deny incoming
    sudo ufw default allow outgoing

    sudo ufw enable
fi

