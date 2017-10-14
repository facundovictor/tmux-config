#!/bin/bash

# Variable for know if the installer must only generate the links.
LINK_ONLY=false

# Parse arguments
while getopts ":l" opt; do
    case $opt in
        l)
            LINK_ONLY=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            ;;
    esac
done

if [ "$LINK_ONLY" = false ] ; then
    # Create the dir where the tmux files will be saved
    mkdir -p /etc/tmux/conf/powerline

    # Copy the configuration code into the config directory
    cp -r ./etc/* /etc/tmux/
fi

if [ ! -f /etc/profile.d/tmux.sh ] ; then
    # Load all profile configs
	cp -r ./profile.d/* /etc/profile.d/
fi

# Create the simbolic links to reference the tmux configuration
ln -s /etc/tmux/tmux.conf ~/.tmux.conf
ln -s /etc/tmux/conf/ ~/.tmux
