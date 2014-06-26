#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Subl ----------------------------------------------------------------------
if [ -f "/usr/local/bin/subl" ]; then
	msg_ok "subl"
else
	msg_run "subl" "ln -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' /usr/local/bin/subl"
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi