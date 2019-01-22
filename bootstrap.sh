#!/bin/sh
#a

# Tells the shell script to exit if it encounters an error
set -e

# -- Log -----------------------------------------------------------------------
# Duplicated code from log.sh
# since we cannot import a file when installing via cURL
function msg {
	echo  "\033[0;37m$1\033[0m";
}

function msg_ok {
	echo  "\033[1;32m $1 \033[0m";
}

function msg_prompt {
	echo  "➜\033[1;37m $1 \033[0m";
}
function msg_nested_done {
	echo  "   * \033[0;37m $1 \033[0m";
}
function msg_category {
	echo  "   * \033[0;33m $1 \033[0m";
}

function msg_nested_lvl_done {
	echo  "       ➜ \033[0;37m $1 \033[0m";
}

function msg_config {
	echo  "➜ \033[1;36m $1 ✔\033[0m";
}

function msg_run {
	echo  "➜\033[1;35m $1  $2\033[0m";
}

function msg_done {
	echo  "✔ \033[1;37m $1 \033[0m";
}
function show_art {
	echo  "\033[1;37m $1 \033[0m";
}

msg '\n'

show_art "     .::            .::      .::    .::                 "
show_art "     .::            .::    .:    .: .::                 "
show_art "     .::   .::    .:.: .:.:.: .:    .::   .::     .:::: "
show_art " .:: .:: .::  .::   .::    .::  .:: .:: .:   .:: .::    "
show_art ".:   .::.::    .::  .::    .::  .:: .::.::::: .::  .::: "
show_art ".:   .:: .::  .::   .::    .::  .:: .::.:            .::"
show_art ".:: .::   .::       .::   .::  .::.:::  .::::   .:: .:: "


msg '\n'
msg_done 'Initializing setup.'
msg '\n'

# -- Homebrew ------------------------------------------------------------------
if hash brew 2> /dev/null; then
	msg_done "homebrew"
else
	msg_run "homebrew" "ruby -e '$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)'"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# -- Git -----------------------------------------------------------------------
if hash git 2> /dev/null; then
	msg_done "git"
else
	msg_run "git"
	brew install git 2> /dev/null
fi

# -- Golang -----------------------------------------------------------------------
if hash go 2> /dev/null; then
	msg_done "golang"
else
	msg_run "golang"
	brew install go 2> /dev/null
fi


# -- Dotfiles ------------------------------------------------------------------
if [[ -d ~/dotfiles ]]; then
	msg_done "clone dotfiles from Github"
else
	msg "dotfiles" "git clone https://github.com/vsouza/dotfiles.git ~/dotfiles"
	git clone https://github.com/vsouza/dotfiles.git ~/dotfiles
fi

msg_prompt "Install apps with homebrew cask"
sh ~/dotfiles/apps.sh

# Configure Git
msg_prompt "configure git"
sh ~/dotfiles/git.sh

# Configure osx directives
msg_prompt "configure osx directives"
sh ~/dotfiles/osx.sh

# Configure Vim
msg_prompt "configure vim"
sh ~/dotfiles/vim.sh

# Install and Configure Python
msg_prompt "Install and Configure Python"
sh ~/dotfiles/python.sh

rm sample.s

msg_done "Your machine  works like a charm! =*"
