#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Subl ----------------------------------------------------------------------
if [ ! -L "/usr/local/bin/subl" ]; then
	msg_run "subl" "ln -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' /usr/local/bin/subl"
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
	msg_ok "subl"
else
	msg_ok "subl"
fi
