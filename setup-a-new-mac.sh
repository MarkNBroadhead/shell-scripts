#!/bin/bash
###########################
# Mark's macOS setup script
###########################

echo "Running Mark's macOS setup script"

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! [ -x "$(command -v git)" ]; then
  echo "Installing and configuring git"
  brew install git
  git config --global user.name "Mark N Broadhead"
  git config --global user.email MarkNBroadhead@gmail.com
fi
#brew install mackup
#echo "Restoring configuration from mackup, requires dropbox"
#mackup restore

if [ ! -f ~/.ssh/id_rsa ]; then
  echo "creating new SSH key. Please enter comment for key"
  read keyComment
  ssh-keygen -t rsa -C "$keyComment"
  echo "Public key follows. Please manually add to github right now."
  cat ~/.ssh/id_rsa.pub
  read -p "Press enter to continue"
  ssh-add
fi

echo "Building directory structure"
mkdir -p ~/Code
cd ~/Code
mkdir -p work personal

echo "Cloning all repos including shell scripts"
./downloadRepos.sh
cd personal/shell-scripts

echo "Installing Homebrew packages"
./brew.sh
./brew-cask.sh

#echo "Cloning dotfiles into ~/.dotfiles"
#cd ~
#git clone https://github.com/MarkNBroadhead/dotfiles .dotfiles
#cd ~/.dotfiles/
#./dotfiles.sh link

echo "Installing Vim Awesome"
if [ ! -f ~/.vim_runtime/install_awesome_vimrc.sh ]; then
  git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_awesome_vimrc.sh
fi

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing VIM Plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# configure macOS
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
  "552792489" # Status Clock
)
for mac_app_store_app in "${mac_app_store_apps[@]}"; do
  mas install "$mac_app_store_app"
done

echo "Setting macOS default settings to ones I like"
./macos.sh

echo "Manual tasks follow..."
cat << EOF

Most things are taken care of automatically with the set up script, but some manual items are needed:

- Add SSH key to stash, soxbitbucket, github enterprise, github
- Configure copyless to start on boot
- Add code directories to directories spotlight search ignores
- Install Docker

EOF
