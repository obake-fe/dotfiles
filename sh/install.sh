#!/bin/bash

for f in ~/git/dotfiles/.??*
do
    [[ "$f" == ~/git/dotfiles/.git ]] && continue
    [[ "$f" == ~/git/dotfiles/.DS_Store ]] && continue

    echo "$f"
    ln -snfv "$f" ~
done
