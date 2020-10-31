#!/bin/bash

# スクリプトの実行場所を考慮しないようにする
cd `dirname $0`
ROOT_DIR=$(cd ../; pwd)

# シンボリックリンクを貼る
for f in $ROOT_DIR/.??*
do
    [[ "$f" == $ROOT_DIR/.git ]] && continue
    [[ "$f" == $ROOT_DIR/.gitignore ]] && continue
    [[ "$f" == $ROOT_DIR/.DS_Store ]] && continue
    [[ "$f" == $ROOT_DIR/.zsh/.zcompdump ]] && continue

    ln -snfv "$f" ~
done
