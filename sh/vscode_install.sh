#!/bin/sh

# スクリプトの実行場所を考慮しないようにする
cd `dirname $0`
ROOT_DIR=$(cd ../; pwd)
SCRIPT_DIR=$(cd ../.vscode; pwd)
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

rm "$VSCODE_SETTING_DIR/extensions"
ln -s "$SCRIPT_DIR/extensions" "${VSCODE_SETTING_DIR}/extensions"

rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

install extention
cat "$SCRIPT_DIR/extensions" | while read line
do
 code --install-extension $line
done

code --list-extensions > "$SCRIPT_DIR/extensions"

