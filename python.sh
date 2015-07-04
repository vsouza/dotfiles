#!/bin/sh
source $HOME/dotfiles/log.sh

# -- Python ----------------------------------------------------------------------
if ! hash python 2> /dev/null; then
    brew install python 2> /dev/null
    msg_nested_done "install python"
fi



	yes | pip install ipdb  > sample.s 2> /dev/null
	msg_nested_done "ipdb"

	yes | pip install virtualenvwrapper  > sample.s 2> /dev/null
	msg_nested_done "virtualenvwrapper"



msg_done "Python configured"

