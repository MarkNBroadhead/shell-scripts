#!/bin/bash

# to maintain cask ....
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

brew tap caskroom/versions

# Install native apps
brew install caskroom/cask/brew-cask

 cask_packages=(
   "atom"
   "boostnote"
   "cakebrew"
   "cyberduck"
   "dash"
   "disk-inventory-x"
   "dropbox"
   "gimp"
   "google-chrome"
   "gpgtools"
   "insomnia"
   "iterm2"
   "java"
   "java8"
   "kdiff3"
   "mysqlworkbench"
   "postman"
   "rescuetime"
   "slack"
   "sourcetree"
   "spectacle"
   "spotify"
   "sublime-text"
   "transmission"
   "tunnelblick"
   "visual-studio-code"
   "visualvm"
   "vlc"
 )

 for package in "${cask_packages[@]}"; do
   brew cask install "$package"
 done
