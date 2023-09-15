#!/bin/bash

defaults write com.apple.dock autohide -bool "true"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool "false"
defaults write com.apple.dock expose-group-apps -bool "true"
defaults write com.apple.dock mineffect suck;
defaults write com.apple.dock scroll-to-open -bool "true";
defaults write com.apple.dock tilesize -int "36"
defaults write com.apple.finder _FXSortFoldersFirst -bool "true"
defaults write com.apple.finder AppleShowAllFiles -bool "true";
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool "false"
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder ShowPathbar -bool "true"
defaults write NSGlobalDomain AppleShowAllExtensions -bool "true"

killall Dock;
killall Finder;

sudo chmod u+w /etc/pam.d/sudo
echo "auth       sufficient     pam_tid.so\n$(cat /etc/pam.d/sudo)" | sudo tee /etc/pam.d/sudo > /dev/null
sudo chmod u-w /etc/pam.d/sudo

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-versions;
brew tap homebrew/cask-fonts;

brew install \
  antigen \
  bat \
  ctop \
  diff-so-fancy \
  exa \
  fd \
  fzf \
  gh \
  gnupg \
  htop \
  jq \
  k9s \
  kubectl \
  navi \
  prettyping \
  readline \
  telnet \
  terraform \
  thefuck \
  tig \
  tldr \
  tree \
  watch;
brew install --cask \
  cursor \
  docker \
  figma \
  font-fira-code \
  google-chrome \
  iterm2 \
  messenger \
  microsoft-excel \
  microsoft-outlook \
  microsoft-rectangle \
  microsoft-teams \
  microsoft-word \
  telegram \
  visual-studio-code-insiders;

$(brew --prefix)/opt/fzf/install

DOT_FILES=('.alias' '.antigenrc' '.custom-envs' '.gitconfig' '.vimrc' '.zshrc')

for DOT_FILE in "${DOT_FILES[@]}"
do
  curl -fsSL https://raw.githubusercontent.com/dborysov/dotfiles/HEAD/$DOT_FILE > ~/$DOT_FILE
done
