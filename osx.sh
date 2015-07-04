#!/bin/sh
source $HOME/dotfiles/log.sh



sudo -v

###############################################################################
# General UI/UX
###############################################################################

msg_nested_lvl_done "[General] Set your computer name"
sudo scutil --set ComputerName "vsouza"
sudo scutil --set HostName "vsouza"
sudo scutil --set LocalHostName "vsouza"


msg_nested_lvl_done "[General] Increasing the window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001


msg_nested_lvl_done "[General] Expanding the save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true


msg_nested_lvl_done "[General] Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

msg_nested_lvl_done "[General] Displaying ASCII control characters using caret notation in standard text views"
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

msg_nested_lvl_done "[General] Save to disk, rather than iCloud, by default)"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

msg_nested_lvl_done "[General] Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

msg_nested_lvl_done "[General] Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

msg_nested_lvl_done "[General] Removing duplicates in the 'Open With' menu"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user


msg_nested_lvl_done "[General] Disable smart quotes and smart dashes)"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

msg_nested_lvl_done "[General] Add ability to toggle between Light and Dark mode in Yosemite using ctrl+opt+cmd+t)"
# http://www.reddit.com/r/apple/comments/2jr6s2/1010_i_found_a_way_to_dynamically_switch_between/
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

msg_nested_lvl_done "[General] Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


###############################################################################
# General Power and Performance modifications
###############################################################################


msg_nested_lvl_done "[Power] Enable hibernation"
sudo pmset -a hibernatemode 0

msg_nested_lvl_done "[Power] Remove the sleep image file to save disk space)"
sudo rm /Private/var/vm/sleepimage
msg_nested_lvl_done "Creating a zero-byte file instead"
sudo touch /Private/var/vm/sleepimage
msg_nested_lvl_done "and make sure it can't be rewritten"
sudo chflags uchg /Private/var/vm/sleepimage

msg_nested_lvl_done "[Power]  Disable the menubar transparency)"
defaults write com.apple.universalaccess reduceTransparency -bool true


msg_nested_lvl_done "[Power]  Speeding up wake from sleep to 24 hours from an hour"
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/
sudo pmset -a standbydelay 86400


################################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###############################################################################

msg_nested_lvl_done "[Accessories] Increasing sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


msg_nested_lvl_done "[Accessories]  Enabling full keyboard access for all controls (enable Tab in modal dialogs, menu windows, etc.)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3


msg_nested_lvl_done "[Accessories] Disabling press-and-hold for special keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


msg_nested_lvl_done "[Accessories] Setting a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0


msg_nested_lvl_done "[Accessories] Setting trackpad speed to 2 & mouse speed to 2.5"
defaults write -g com.apple.trackpad.scaling 2
defaults write -g com.apple.mouse.scaling 2.5

msg_nested_lvl_done "[Accessories] Turn off keyboard illumination when computer is not used for 5 minutes"
defaults write com.apple.BezelServices kDimTime -int 300


msg_nested_lvl_done "[Accessories] Disable display from automatically adjusting brightness)"
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

msg_nested_lvl_done "[Accessories] Disable keyboard from automatically adjusting backlight brightness in low light)"
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool false

###############################################################################
# Screen
###############################################################################
msg_nested_lvl_done "[Screen] Requiring password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


msg_nested_lvl_done "[Screen] Store screenshots in $HOME/Pictures/scheenshots folder"
if [ ! -d "${HOME}/Pictures/screenshots" ]; then
	mkdir ${HOME}/Pictures/screenshots
fi
screenshot_location="${HOME}/Pictures/screenshots"
defaults write com.apple.screencapture location -string "${screenshot_location}"


msg_nested_lvl_done "[Screen] Save screenshots in .png format"
defaults write com.apple.screencapture type -string "png"

msg_nested_lvl_done "[Screen] Enabling HiDPI display modes (requires restart)"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder
###############################################################################

msg_nested_lvl_done "[Finder] Show icons for hard drives, servers, and removable media on the desktop)"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true


msg_nested_lvl_done "[Finder] Show hidden files in Finder by default)"
defaults write com.apple.Finder AppleShowAllFiles -bool true


msg_nested_lvl_done "[Finder] Show dotfiles in Finder by default)"
defaults write com.apple.finder AppleShowAllFiles TRUE


msg_nested_lvl_done "[Finder] Show all filename extensions in Finder by default)"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

msg_nested_lvl_done "[Finder] Show status bar in Finder by default)"
defaults write com.apple.finder ShowStatusBar -bool true

msg_nested_lvl_done "[Finder] Display full POSIX path as Finder window title)"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

msg_nested_lvl_done "[Finder] Use column view in all Finder windows by default)"
defaults write com.apple.finder FXPreferredViewStyle Clmv


msg_nested_lvl_done "[Finder] Avoid creation of .DS_Store files on network volumes)"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

msg_nested_lvl_done "[Finder] Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true


msg_nested_lvl_done "[Finder] Allowing text selection in Quick Look/Preview in Finder by default"
defaults write com.apple.finder QLEnableTextSelection -bool true

msg_nested_lvl_done "[Finder] Enabling snap-to-grid for icons on the desktop and in other icon views"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist


###############################################################################
# Dock & Mission Control
###############################################################################

msg_nested_done "[Finder] Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 36

msg_nested_lvl_done "[Finder] Speeding up Mission Control animations and grouping windows by application"
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

msg_nested_lvl_done "[Finder] Set Dock to auto-hide and remove the auto-hiding delay)"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

###############################################################################
# Chrome, Safari, & WebKit
###############################################################################

msg_nested_lvl_done "[Safari] Privacy: Don't send search queries to Apple"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true


msg_nested_lvl_done "[Safari] Hiding Safari's bookmarks bar by default"
defaults write com.apple.Safari ShowFavoritesBar -bool false


msg_nested_lvl_done "[Safari] Hiding Safari's sidebar in Top Sites"
defaults write com.apple.Safari ShowSidebarInTopSites -bool false


msg_nested_lvl_done "[Safari] Disabling Safari's thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2


msg_nested_lvl_done "[Safari] Enabling Safari's debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true


msg_nested_lvl_done "[Safari] Making Safari's search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false


msg_nested_lvl_done "[Safari] Removing useless icons from Safari's bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"


msg_nested_lvl_done "[Safari] Enabling the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true


msg_nested_lvl_done "[Safari] Adding a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true



###############################################################################
# Time Machine
###############################################################################

msg_nested_lvl_done "[Time machine] Prevent Time Machine from prompting to use new hard drives as backup volume)"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


msg_nested_lvl_done "[Time machine] Disable local Time Machine backups"
hash tmutil &> /dev/null && sudo tmutil disablelocal


###############################################################################
# Messages                                                                    #
###############################################################################

msg_nested_lvl_done "[Messages] Disable smart quotes in Messages.app? (it's annoying for messages that contain code) (y/n)"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false


msg_nested_lvl_done "[Messages] Disable continuous spell checking in Messages.app)"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false


###############################################################################
# Transmission.app                                                            #
###############################################################################


msg_nested_lvl_done "[Transmission] Don't prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false


###############################################################################
# Kill affected applications
############################"Terminal" "Transmission"; do
killall "${app}" > /dev/null 2>&1
msg_done "osx customizations"
