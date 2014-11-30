#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- MeteorJs -------------------------------------------------------------------------
if hash meteor 2> /dev/null; then
    msg_ok "MeteorJS"
else
    msg_run "Install MeteorJS"
    curl https://install.meteor.com/ | sh
fi
