#!/bin/bash
###########################
# Mark's macOS setup script
###########################

echo "Running Mark's macOS setup script"
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing git and mackup"
brew install git
brew install mackup

echo "Restoring configuration from mackup, requires dropbox"
mackup restore

echo "Building directory structure"
cd ~
mkdir Code
cd ~/Code
mkdir work personal

echo "Cloning shell scripts"
cd ~/Code
git clone https://github.com/MarkNBroadhead/shell-scripts

echo "Cloning dotfiles into ~/.dotfiles"
cd ~
git clone git@github.com:MarkNBroadhead/dotfiles.git .dotfiles
cd ~/.dotfiles/
./dotfiles link

echo "Installing Homebrew packages"
./brew.sh
./brew-cask.sh

echo "Installing Vim Awesome"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# configure macos
echo "Installing macOS apps"
mac_app_store_apps=(
  "585829637" # Todoist
  "1055511498" # Day One
  "409789998" # Twitter
  "402592703" # Time Out
  "715768417" # Microsoft Remote Desktop
  "425424353" # The Unarchiver
  "497799835" # Xcode
  "406056744" # Evernote
  "1073404370" # LogTail
  "993841014" # CopyLess 2
)
for mac_app_store_app in "${mac_app_store_apps[@]}"; do
  mas install "$mac_app_store_app"
done

echo "Setting macOS default settings to ones I like"
./macos.sh

echo "Manual tasks follow..."
cat << EOF

Most things are taken care of automatically with the set up script, but some manual items are needed:

- Make new SSH key
- Add ssh key to keychain with the ssh-add command
- Configure copyless to start on boot

EOF
