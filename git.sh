#!/bin/sh
source ~/dotfiles/log.sh

# -- Config --------------------------------------------------------------------
if [[ -L ~/.gitconfig ]]; then
    rm ~/.gitconfig
fi

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
msg_nested_done "gitconfig"


# -- Global Ignore -------------------------------------------------------------
if [[ -L ~/.gitignore_global ]]; then
	rm ~/.gitignore_global
fi
	
msg_nested_done "gitignore_global" 
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global

msg_done "git configured."
