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


 go get github.com/fzipp/pythia
 msg_nested_done "install pythia"

 go get golang.org/x/tools/cmd/godoc
 msg_nested_done "install godoc"

 go get golang.org/x/tools/cmd/vet
 msg_nested_done "install govet"

msg_done "golang configured."
