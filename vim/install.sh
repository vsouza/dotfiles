#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Mac OS X ------------------------------------------------------------------
if [[ -f "$HOME/.vimrc" ]]; then
  rm $HOME/.vimrc
fi

ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
msg_ok "vimrc"
