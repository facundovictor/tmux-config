#!/bin/bash

# Create the dir where the tmux files will be saved
mkdir -p /etc/tmux/powerline

# Copy the configuration code into the config directory
cp -r ./etc/* /etc/tmux/

# Create the simbolic link to reference the tmux configuration
ln -s /etc/tmux/tmux.conf ~/.tmux.conf
