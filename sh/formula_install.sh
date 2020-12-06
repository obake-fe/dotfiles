#!/bin/bash

formulas=(
  coreutils
  ghq
  peco
  pngquant
  tig
)

echo "start brew install ..."
for formula in "${formulas[@]}"
do
  brew install $formula
done

brew cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END