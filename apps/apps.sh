#!/bin/sh

# Install All Apps i need

source $HOME/.dotfiles/log.sh

applications="/Applications"
app[firefox]="Firefox.app"
app[chrome]="Google Chrome.app"
app[cloud]="Cloud.app"
app[caffeine]="Caffeine.app"
app[chrome]="Google Chrome.app"
app[eclipse]="eclipse"
app[filezilla]="FileZilla.app"
app[sublime]="Sublime Text.app"
app[github]="GitHub.app"
app[skype]="Skype.app"
app[dropbox]="Dropbox.app"
app[iterm2]="iterm2.app"
app[sourcetree]="SourceTree.app"
app[virtualbox]="VirtualBox.app"
app[mysqlWorkbench]="MySQLWorkbench.app"
app[googleDrive]="Google Drive.app"
app[evernote]="Evernote.app"
app[spotify]="Spotify.app"
app[uTorrent]="uTorrent.app"
app[vlc]="VLC.app"

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


if [ ! -d "$applications/${app[firefox]}" ]
then
  brew cask install firefox
  msg_ok "Firefox"
else
  msg_ok "Firefox"
fi

##

if [ ! -d "$applications/${app[chrome]}" ]
then
  brew cask install google-chrome
  msg_ok "Google Chrome"
else
  msg_ok "Google Chrome"
fi


if [ ! -d "$applications/${app[sublime]}" ]
then
  brew cask install sublime-text
  msg_ok "Sublime Text"
else
  msg_ok "Sublime Text"
fi

if which atom &> /dev/null; then
  msg_ok "Atom"
else
  brew cask install atom
  msg_ok "Atom"
fi

if [ ! -d "$applications/${app[filezilla]}" ]
then
  brew cask install filezilla
  msg_ok "Filezilla"
else
  msg_ok "Filezilla"
fi

if [ ! -d "$applications/${app[iterm2]}" ]
then
  brew cask install iterm2
  msg_ok "iTerm2"
else
  msg_ok "iTerm2"
fi

if [ ! -d "$applications/${app[sourcetree]}" ]
then
  brew cask install sourcetree
  msg_ok "Source Tree"
else
  msg_ok "Source Tree"
fi

if [ ! -d "$applications/${app[virtualbox]}" ]
then
  brew cask install virtualbox
  msg_ok "VirtualBox"
else
  msg_ok "VirtualBox"
fi

if [ ! -d "$applications/${app[github]}" ]
then
  brew cask install github
  msg_ok "Github app"
else
  msg_ok "Github app"
fi

if [ ! -d "$applications/${app[mysqlWorkbench]}" ]
then
  brew cask install mysqlworkbench
  msg_ok "Mysql Workbench"
else
  msg_ok "Mysql Workbench"
fi

if which vagrant &> /dev/null; then
  msg_ok "Vagrant"
else
  brew cask install vagrant
  msg_ok "Vagrant"
fi


if [ ! -d "$applications/${app[dropbox]}" ]
then
  brew cask install dropbox
  msg_ok "Dropbox"
else
  msg_ok "Dropbox"
fi

if [ ! -d "$applications/${app[googleDrive]}" ]
then
  brew cask install google-drive
  msg_ok "Google Drive"
else
  msg_ok "Google Drive"
fi

if [ ! -d "$applications/${app[evernote]}" ]
then
  brew cask install evernote
  msg_ok "Evernote"
else
  msg_ok "Evernote"
fi

if [ ! -d "$applications/${app[skype]}" ]
then
  brew cask install skype
  msg_ok "Skype"
else
  msg_ok "Skype"
fi

if [ ! -d "$applications/${app[spotify]}" ]
then
  brew cask install spotify
  msg_ok "Spotify"
else
  msg_ok "Spotify"
fi

if [ ! -d "$applications/${app[uTorrent]}" ]
then
  brew cask install utorrent
  msg_ok "uTorrent"
else
  msg_ok "uTorrent"
fi

if [ ! -d "$applications/${app[vlc]}" ]
then
  brew cask install vlc
  msg_ok "Vlc Media Player"
else
  msg_ok "Vlc Media Player"
fi

if [ ! -d "$applications/${app[cloud]}" ]
then
  brew cask install cloud
  msg_ok "Cloud App"
else
  msg_ok "Cloud App"
fi


if [ ! -d "$applications/${app[caffeine]}" ]
then
  brew cask install caffeine
  msg_ok "Caffeine"
else
  msg_ok "Caffeine"
fi

# After install apps, move to /Applications
msg_ok "Their applications have been successfully installed. Now let's move to the /Applications folder"
moveApps
msg_ok "Done!"
