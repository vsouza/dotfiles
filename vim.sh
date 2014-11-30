#!/bin/sh
source $HOME/.dotfiles/log.sh

if hash vim 2> /dev/null; then
    msg_ok "Vim"
else
    brew install vim 2> /dev/null
fi

# -- Mac OS X ------------------------------------------------------------------
if [[ -f "$HOME/.vimrc" ]]; then
  rm $HOME/.vimrc
fi

ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
msg_ok "vimrc"
