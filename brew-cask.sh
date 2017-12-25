#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
brew install caskroom/cask/brew-cask

 cask_packages=(
   "atom"
   "boostnote"
   "cakebrew"
   "cyberduck"
   "disk-inventory-x"
   "dropbox"
   "google-chrome"
   "gpgtools"
   "insomnia"
   "iterm2"
   "mysqlworkbench"
   "rescuetime"
   "slack"
   "sourcetree"
   "spectacle"
   "spotify"
   "sublime-text"
   "transmission"
   "visualvm"
   "vlc"
 )

 for package in "${cask_packages[@]}"; do
   brew cask install "$package"
 done
