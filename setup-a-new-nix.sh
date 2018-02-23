#!/bin/bash
###########################
# Mark's GNU/Linux setup script
###########################

echo "Running Mark's GNU/Linux setup script"

echo "Installing git"
sudo apt-get install git

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

echo "Installing Vim Awesome"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# configure os
echo "Installing apps"
aptitude_apps=(
)
for app in "${aptitude_apps[@]}"; do
  sudo apt-get install "$app"
done

echo "Manual tasks follow..."
cat << EOF

Most things are taken care of automatically with the set up script, but some manual items are needed:

- Make new SSH key

EOF
