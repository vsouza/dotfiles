#!/bin/sh
source $HOME/dotfiles/log.sh

# -- Config --------------------------------------------------------------------
if [[ -L "$HOME/.gitconfig" ]]; then
	msg_nested_done "gitconfig"
else
	msg_run "gitconfig" "ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig"
	ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
fi

# -- Global Ignore -------------------------------------------------------------
if [[ -L "$HOME/.gitignore_global" ]]; then
	msg_nested_done "gitignore_global"
else
	msg_run "gitignore_global" "ln -s $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global"
	ln -s $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global
fi

msg_done "git configured."