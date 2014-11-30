#!/bin/sh
source $HOME/.dotfiles/log.sh

if hash python 2> /dev/null; then
    msg_ok "Python 2.7"
else
    msg_run "install Python"
    brew install python
fi
