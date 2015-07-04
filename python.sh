#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Python ----------------------------------------------------------------------
if hash python 2> /dev/null; then
    msg_ok "Python"
else
    brew install python 2> /dev/null
fi

## Install some pip packages
msg run "install ipdb"
pip install ipdb

