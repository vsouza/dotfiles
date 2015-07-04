#!/bin/sh
source $HOME/dotfiles/log.sh

if [ ! -d $HOME/golang ]; then
    msg_nested_done "Create folder for Golang projects in $HOME/golang"
    mkdir $HOME/golang
fi
msg_nested_done "Set GOPATH and GOROOT enviroment variables"
export GOROOT=/usr/local/go/1.3/bin
export GOPATH=$HOME/golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

msg_done "golang configured."