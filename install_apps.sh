#!/bin/bash

# Install MacOS apps

BrewCaskApps=(
	'alacritty'
	'dash'
	'docker'
	'franz'
	'keka'
	'skype'
	'slack'
	'spotify'
	'telegram'
	'transmit'
	'virtualbox'
	'vlc'
)

BrewApps=(
	'autoconf'
	'go'
	'kubernetes-cli'
	'mongodb'
	'neovim'
	'redis'
	'telnet'
	'ctags'
	'libevent'
	'tmux'
	'elasticsearch'
	'mysql'
	'openssl'
	'tree'
	'wget'
)

install_homebrew(){
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

install_brew_apps(){
  for app in BrewCaskApps; do
    brew cask install $app
  done
}

install_homebrew_cask(){
  brew tap caskroom/cask
}

install_brew_cask_apps(){
  for app in BrewApps; do
    brew install $app
  done
}
