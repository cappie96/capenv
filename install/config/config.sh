#!/bin/bash

set -e

config_dir=~/.config

 if [ ! -d $config_dir ]; then
     mkdir -p $config_dir
fi

cp -R ~/capenv/configs/* ~/.config/
