#!/bin/bash

# Create the dir where the tmux files will be saved
mkdir -p /etc/tmux/conf/powerline

# Copy the configuration code into the config directory
cp -r ./etc/* /etc/tmux/

# Create the simbolic links to reference the tmux configuration
ln -s /etc/tmux/tmux.conf ~/.tmux.conf
ln -s /etc/tmux/conf/ ~/.tmux
