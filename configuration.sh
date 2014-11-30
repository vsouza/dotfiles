#!/bin/sh

source $HOME/.dotfiles/log.sh

#Git configuration:
msg_prompt "Your git config name is:"
read GITNAME

export GITNAME

msg_prompt "Your git config email is:"
read GITEMAIL

export GITEMAIL
