# Mac環境構築メモ

## Chromeインストール

- [Google Chrome ウェブブラウザ](https://www.google.co.jp/chrome/?brand=AGAK&gclsrc=aw.ds&&gclid=CjwKCAiA_Kz-BRAJEiwAhJNY75fDAMeyEL5ZSHnlXoKIbbJkNQgRUycLmpmGQQJaANMJQExudh0mjhoCcXEQAvD_BwE)

## Xcode, Homebrew, Git

- [MacOSでCommand line tools for XcodeとHomebrewのインストール - Qiita](https://qiita.com/royroy/items/338362362de73a94fc0c)
- [最新の Git を Mac にインストールする手順 - Qiita](https://qiita.com/normalsalt/items/f200ba50363ebfd46df0)

## Zsh, Zinit

- [【Zsh】Zinitでターミナル環境を整えよう！ - Qiita](https://qiita.com/nb_tomo/items/c2edf65de684f026c59c)

## Vim

- プラグインマネージャインストール

```shell
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh ~/.vim/bundles
```

## dotfiles

- このリポジトリをクローンする
- ホームディレクトリにdotfilesのシンボリックリンクを作成
```shell
$ sh/mk_link.sh
$ sh/vscode_install.sh
```

## Node.js

- [Volta](https://volta.sh/) でinstall
```shell
$ curl https://get.volta.sh | bash
$ volta -v
$ volta install node@16
$ volta install yarn@latest
```

## Homebrewでアプリインストール

```shell
$ brew bundle --global
```

## ブラウザでアプリインストール

- [PasteHelper](https://pasteapp.io/helper)

## 同期設定

- [VS Code](https://qiita.com/tomokei5634/items/22128efe306ce9bc5682)
- [ITerm2](https://ry-2718.hatenablog.com/entry/2019/04/02/021006)
- [Google日本語入力](https://ischool.co.jp/2019-01-23/)
- BoostNote
- [BetterTouchTool](https://tom106.com/bettertouchtool-sync)
- [Alfred](https://webrandum.net/alfred-syncing/)
- Paste

## 参考リンク

- [macOS を10.13.5にアップデートしたらターミナルが死んだ - Qiita](https://qiita.com/Kansei/items/4029a0dff197039c5e78)
- [ターミナルでコマンドを入力できない　プロセスが完了しましたとなる - Qiita](https://qiita.com/kohei1218/items/7128cac7e5717181abc7)
- [bashの表示色をカスタマイズ - Qiita](https://qiita.com/soramugi/items/a726bd64330e08daa9e5)
- [おれのおれによるおれのためのMacおすすめ設定 - Qiita](https://qiita.com/jonghyo/items/733e0aeb5d6cd58e4855)
- [BrewBundleの使い方.md](https://gist.github.com/yoshimana/43b9205ddedad0ad65f2dee00c6f4261)
- [Macでyarnをインストールする方法 \| Awesome Blog](https://awesome-linus.com/2019/04/11/mac-yarn-install/)
- [Brewfile からパッケージをインストールする](https://engineers.weddingpark.co.jp/homebrew-bundle/)
- [VSCode 環境をgit管理してどこでも同じ環境を引き継ぐ - Qiita](https://qiita.com/miiina016/items/018331b36ecf57ed8973)
