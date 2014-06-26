#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Mac OS X ------------------------------------------------------------------
if [[ -f "$HOME/.osx" ]]; then
	rm $HOME/.osx
fi

ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx
msg_ok "osx"
