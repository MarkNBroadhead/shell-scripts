/bin/bash
# to maintain cask ....
brew update && brew upgrade && brew cleanup && brew cleanup

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

cask_packages=(
  "cyberduck"
  "dash"
  "dbvisualizer"
  "disk-inventory-x"
  "dropbox"
  "font-fira-code"
  "font-fira-mono"
  "font-fira-mono-for-powerline"
  "font-fira-sans"
  "gimp"
  "google-chrome"
  "google-cloud-sdk"
  "gpgtools"
  "insomnia"
  "iterm2"
  "kdiff3"
  "mysqlworkbench"
  "obsidian"
  "postman"
  "rescuetime"
  "slack"
  "sourcetree"
  "spectacle"
  "spotify"
  "sublime-merge"
  "sublime-text"
  "transmission"
  "tunnelblick"
  "visual-studio-code"
  "vlc"
  "yed"
)

for package in "${cask_packages[@]}"; do
    brew install --cask "$package"
done
