#!/bin/sh
source $HOME/dotfiles/log.sh

if hash vim 2> /dev/null; then
    msg_nested_done "Vim Already installed!"
else
    msg_run "install Vim"
    brew install vim 2> /dev/null
fi

if [[ -h ~/.vimrc ]]; then
   rm ~/.vimrc
fi

if [[ -d ~/dotfiles/.vimrc ]]; then
    sudo rm -r ~/dotfiles/.vimrc
    msg_nested_done "setup .vimrc file from https://github.com/vsouza/.vimrc"
	git clone https://github.com/vsouza/.vimrc.git 2> /dev/null
	ln -s ~/dotfiles/.vimrc/.vimrc ~/.vimrc
fi

msg_done "Setup Vim completed"
