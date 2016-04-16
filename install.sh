#!/bin/bash

# Create the dir where the tmux files will be saved
mkdir -p /etc/tmux

# Copy the configuration code into the config directory
cp ./etc/* /etc/tmux/

# Create the simbolic link to reference the tmux configuration
ln -s ~/.tmux.conf /etc/tmux/.tmux.conf
