#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Bower ---------------------------------------------------------------------
if which bower &> /dev/null; then
	msg_ok "bower"
else
	msg_run "bower" "sudo npm install -g bower"
	sudo npm install -g bower
fi
