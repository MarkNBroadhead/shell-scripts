#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# z hopping around folders
brew install z

# run this script when this file changes guy.
brew install entr

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
brew install hub

# mtr - ping & traceroute. best.
brew install mtr
    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install ack
brew install git
brew install git-lfs
brew install ffmpeg --with-libvpx
brew install fzf
brew install htop
brew install imagemagick --with-webp
brew install mas
brew install ncdu # find where your diskspace went
brew install node # This installs `npm` too using the recommended installation method
brew install ssh-copy-id
brew install pidcat   # colored logcat guy
brew install pv
brew install rename
brew install rtv
brew install terminal-notifier
brew install the_silver_searcher
brew install tree
brew install tmux
brew install zopfli
brew install zsh

# Dev tools
brew install flyway
brew install gradle
brew install jmeter
brew install maven
brew install mysql


# CTF tools
brew install nmap
brew install wireshark --with-qt


# Remove outdated versions from the cellar
brew cleanup

# Install fzf auto-completion
$(brew --prefix)/opt/fzf/install

echo "May want to add fzf to .vimrc... add: set rtp+=/usr/local/opt/fzf"
