#!/bin/sh

source $HOME/.dotfiles/log.sh

msg_run "Installing Apps"

# homebrew-cask

if [ ! -d "/usr/local/Library/Taps/caskroom/homebrew-cask" ]
then
  brew tap phinze/homebrew-cask
  brew install brew-cask
  msg_ok "homebrew-cask is ready!"
else
  msg_ok "Setup homebrew-cask"
fi


brew cask install firefox --appdir=/Applications 2> /dev/null
msg_ok "Firefox"

brew cask install google-chrome --appdir=/Applications 2> /dev/null
msg_ok "Google Chrome"

brew cask install chromium --appdir=/Applications 2> /dev/null
msg_ok "Chromium"

brew cask install sublime-text --appdir=/Applications 2> /dev/null
msg_ok "Sublime Text"

brew cask install atom --appdir=/Applications 2> /dev/null
msg_ok "Atom"

brew cask install transmit --appdir=/Applications 2> /dev/null
msg_ok "Transmit"

brew cask install dash --appdir=/Applications 2> /dev/null
msg_ok "dash"

brew cask install robomongo --appdir=/Applications 2> /dev/null
msg_ok "robomongo"

brew cask install fitbit-connect --appdir=/Applications 2> /dev/null
msg_ok "fitbit-connect"

brew cask install iterm2 --appdir=/Applications 2> /dev/null
msg_ok "iTerm2"

brew cask install littleipsum --appdir=/Applications 2> /dev/null
msg_ok "littleipsum"

brew cask install virtualbox --appdir=/Applications 2> /dev/null
msg_ok "VirtualBox"


brew cask install github --appdir=/Applications 2> /dev/null
msg_ok "Github app"

brew cask install mysqlworkbench --appdir=/Applications 2> /dev/null
msg_ok "Mysql Workbench"

brew cask install vagrant --appdir=/Applications 2> /dev/null
msg_ok "Vagrant"

brew cask install google-drive --appdir=/Applications 2> /dev/null
msg_ok "Google Drive"

brew cask install evernote --appdir=/Applications 2> /dev/null
msg_ok "Evernote"

brew cask install skype --appdir=/Applications 2> /dev/null
msg_ok "Skype"

brew cask install spotify --appdir=/Applications 2> /dev/null
msg_ok "Spotify"


brew cask install vlc --appdir=/Applications 2> /dev/null
msg_ok "Vlc Media Player"

brew cask install cloud --appdir=/Applications 2> /dev/null
msg_ok "Cloud App"

brew cask install keka --appdir=/Applications 2> /dev/null
msg_ok "Keka"

brew cask install icons8 --appdir=/Applications 2> /dev/null
msg_ok "icons8"

brew cask install caffeine --appdir=/Applications 2> /dev/null
msg_ok "Caffeine"

brew cask install transmission --appdir=/Applications 2> /dev/null
msg_ok "Transmission"
msg_ok "Done!"
