#!/bin/bash
###########################
# Mark's macOS setup script
###########################

echo "Running Mark's macOS setup script"

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! [ -x "$(command -v git)" ]; then
  echo "Installing and configuring git"
  brew install git
  git config --global user.name "Mark N Broadhead"
  git config --global user.email MarkNBroadhead@gmail.com
fi

if [ -f ~/.ssh/id_ed225519 ]; then
  echo "creating new SSH key. Please enter comment for key"
  read keyComment
  ssh-keygen -t ed25519 -C "$keyComment"
  echo "Public key follows. Please manually add to github right now."
  cat ~/.ssh/id_ed25519.pub
  read -p "Press enter to continue"
  ssh-add
fi

echo "Building directory structure"
mkdir -p ~/code
cd ~/code
mkdir -p work personal
cd personal

git clone git@github.com:MarkNBroadhead/shell-scripts.git
cd shell-scripts
