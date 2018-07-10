#!/bin/sh

source $HOME/dotfiles/log.sh


# homebrew-cask

if hash brew-cask 2> /dev/null; then
	msg_done "Brew cask is installed!"
else
	brew tap phinze/homebrew-cask  > sample.s 2> /dev/null
  	brew install brew-cask  > sample.s 2> /dev/null
	msg_done "Brew cask is installed!"

fi

brew cask install google-chrome --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Google Chrome"

brew cask install transmit --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Transmit"

brew cask install dash --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "dash"

brew cask install robomongo --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "robomongo"

brew cask install iterm2 --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "iTerm2"

brew cask install virtualbox --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "VirtualBox"

brew cask install vagrant --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Vagrant"

brew cask install skype --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Skype"

brew cask install spotify --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Spotify"

brew cask install vlc --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Vlc Media Player"

brew cask install cloud --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Cloud App"

brew cask install keka --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Keka"

brew cask install slack --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Slack"

brew cask install telegram --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Telegram"

brew cask install razorsql --appdir=/Applications  > sample.s 2> /dev/null
msg_nested_done "Razorsql"

brew cask install evernote --appdir=/Applications > sample.s 2> /dev/null
msg_nested_done "Evernote"

brew cask install franz --appdir=/Applications > sample.s 2> /dev/null
msg_nested_done "Franz"

brew cask install docker --appdir=/Applications > sample.s 2> /dev/null
msg_nested_done "Docker"

msg_done "Apps installed!"
