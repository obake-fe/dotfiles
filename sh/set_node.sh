#!/bin/bash

# スクリプトの実行場所を考慮しないようにする
cd `dirname $0`
ROOT_DIR=$(cd ../; pwd)

# `anyenv update` でインストール可能リスト更新できるようにする
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

# npmインストール時に自動でインストールするパッケージの設定
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/nodenv-default-packages.git "$(nodenv root)/plugins/nodenv-default-packages"

ln -snfv $ROOT_DIR/node/default-packages $(nodenv root)/default-packages