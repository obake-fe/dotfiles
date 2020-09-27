#!/bin/bash

casks=(
  google-chrome
  google-japanese-ime
  google-drive-file-stream
  iterm2
  firefox
  zoomus
  visual-studio-code
  boostnote
  slack
  zeplin
  bettertouchtool
  alfred
  forklift
  docker
  virtualbox
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