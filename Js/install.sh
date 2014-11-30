#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Node.JS -------------------------------------------------------------------
if which node &> /dev/null; then
	msg_ok "node"
else
	msg_run "install Node Js" "brew install node"
	brew install node
fi

# -- Bower -------------------------------------------------------------------------
if which bower &> /dev/null; then
	msg_ok "Bower"
else
	msg_run "install bower"
	sudo npm install -g bower
fi

# -- Gulp -------------------------------------------------------------------------
if which gulp &> /dev/null; then
	msg_ok "Bower"
else
	msg_run "install gulp"
	sudo npm install --global gulp
fi

# -- MeteorJs -------------------------------------------------------------------------
if which meteor &> /dev/null; then
	msg_ok "MeteorJS"
else
	msg_run "Install MeteorJS"
	curl https://install.meteor.com/ | sh
fi
