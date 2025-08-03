#!/bin/bash

# check whether nvim already exists
if ! command -v nvim &> /dev/null; then
    paru -S --noconfirm nvim
fi

# possibly setup the nvim config here as well
