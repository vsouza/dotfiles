#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Node.JS -------------------------------------------------------------------
if which node &> /dev/null; then
	msg_ok "node"
else
	msg_run "node" "brew install node"
	brew install node
fi

# -- N -------------------------------------------------------------------------
if which n &> /dev/null; then
	msg_ok "n"
else
	msg_run "n" "sudo npm install -g n"
	sudo npm install -g n
fi