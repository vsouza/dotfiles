#!/bin/sh

source $HOME/.dotfiles/log.sh

function moveApps {
    find /opt/homebrew-cask/Caskroom/ -iname "*.app" -exec mv {} /Applications \;
}

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


brew cask install firefox
msg_ok "Firefox"

brew cask install google-chrome
msg_ok "Google Chrome"


brew cask install sublime-text
msg_ok "Sublime Text"

brew cask install atom
msg_ok "Atom"

brew cask install filezilla
msg_ok "Filezilla"


brew cask install iterm2
msg_ok "iTerm2"



brew cask install virtualbox
msg_ok "VirtualBox"


brew cask install github
msg_ok "Github app"


brew cask install mysqlworkbench
msg_ok "Mysql Workbench"

brew cask install vagrant
msg_ok "Vagrant"

brew cask install google-drive
msg_ok "Google Drive"

brew cask install evernote
msg_ok "Evernote"

brew cask install skype
msg_ok "Skype"

brew cask install spotify
msg_ok "Spotify"


brew cask install vlc
msg_ok "Vlc Media Player"

brew cask install cloud
msg_ok "Cloud App"



brew cask install caffeine
msg_ok "Caffeine"

brew cask install transmission
msg_ok "Transmission"
msg_ok "Done!"
