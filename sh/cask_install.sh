#!/bin/bash

casks=(
  alfred
  bettertouchtool
  boostnote
  discord
  docker
  firefox
  fork
  forklift
  franz
  google-chrome
  google-japanese-ime
  google-drive-file-stream
  iterm2
  kindle
  slack
  skitch
  spotify
  virtualbox
  visual-studio-code
  zeplin
  zoomus
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"
do
  brew cask install $cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END