#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: ./setup.sh [mac|linux]"
    exit 0
fi

if [ $1 == "mac" ]; then
    
    echo "[ INFO ] Setup $1 dotfiles"
    
    ln -sfn ~/.dotfiles/mac/.gemrc  ~/.gemrc
    ln -sfn ~/.dotfiles/mac/.config/fish/ ~/.config
    ln -sfn ~/.dotfiles/mac/.tmux.conf ~/.tmux.conf
    
elif [ $1 == "linux" ]; then
    
    echo "[ INFO ] Setup $1 dotfiles"
    ln -sfn ~/.dotfiles/linux/.config/fish/ ~/.config/
    ln -sfn ~/.dotfiles/linux/.gitconfig ~/.gitconfig
fi
    


