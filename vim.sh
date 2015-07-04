#!/bin/sh
source $HOME/.dotfiles/log.sh

if hash vim 2> /dev/null; then
    msg_ok "Vim Already installed! :)"
else
    msg_run "install Vim"
    brew install vim 2> /dev/null
fi

if [[ -f "$HOME/.vimrc" ]]; then
  rm $HOME/.vimrc
fi

if [[ -d "$HOME/.dotfiles/.vimrc" ]]; then
    sudo rm -r $HOME/.dotfiles/.vimrc
fi

git clone https://github.com/vsouza/.vimrc.git
ln -s $HOME/.dotfiles/.vimrc/.vimrc $HOME/.vimrc

msg_ok "Setup Vim completed"
