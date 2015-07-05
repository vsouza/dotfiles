#!/bin/sh
source ~/dotfiles/log.sh

if [[ -d ~/.oh-my-zsh ]]; then
	msg_nested_done "oh-my-zsh installed"
else
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [[ -L ~/.zshrc ]]; then
	msg_nested_done "zsh"
else
	msg_nested_done "config zsh" "ln -s ~/dotfiles/.zshrc ~/.zshrc"
	ln -s ~/dotfiles/.zshrc ~/.zshrc
fi

msg_done "git configured."