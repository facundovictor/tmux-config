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
    cp -ru ./etc/tmux/* /etc/tmux/
fi

# Load all profile configs
cp -ru ./etc/profile.d/* /etc/profile.d/

if [ ! -L ~/.tmux.conf ] ; then
    # Create the simbolic links to reference the tmux configuration
    ln -s /etc/tmux/tmux.conf ~/.tmux.conf
fi

if [ ! -L ~/.tmux ] ; then
    ln -s /etc/tmux/conf/ ~/.tmux
fi
