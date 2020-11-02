# Mac環境構築メモ

## Homebrewとzsh

- [Homebrewでzshをインストールする](https://smashawk.com/post-2)

## zinit

- zshプラグインマネージャであるzinitをインストール
- https://github.com/zdharma/zinit#installation

## font

- 必要フォントをインストールする
- https://github.com/romkatv/powerlevel10k#fonts

## Git

- AppStoreからXcodeをインストール
- このリポジトリをクローンする

## dotfiles

- sh/mk_link.shを実行し、ホームディレクトリにdotfilesのシンボリックリンクを作成

## Node.js

- nodenvでNode.jsをインストールする（PATHは`.zprofile`で通してある）
- [anyenvとnodenvでNode.jsのバージョン管理をしよう！ - to-R Media](https://www.to-r.net/media/anyenv/)
- `npm`で`yarn`をインストールする
- [Macでyarnをインストールする方法 \| Awesome Blog](https://awesome-linus.com/2019/04/11/mac-yarn-install/)

## Homebrewでインストール

- sh/cask_install.shを実行し、必要macアプリをインストール
- sh/formula_install.shを実行し、formulaをインストール

## App storeでインストール

- Xcode
  - Git
- Paste
- PasteHelper
- bettersnaptool
- LINE

## その他設定

### VSCode設定同期

- [【初心者】VSCodeの設定同期エクステンション「Setting Sync」 - Qiita](https://qiita.com/tomokei5634/items/22128efe306ce9bc5682)

### iterm設定同期

- [ITerm2の設定をGitHubで共有……できんやんけ！って思ってたけどそうでもなかった - めっちゃいいタイトル思いついたんだけど風呂入ったら忘れちゃった](https://ry-2718.hatenablog.com/entry/2019/04/02/021006)

## 業務外PC

### iCloud同期

- [google日本語入力](https://ischool.co.jp/2019-01-23/)
- boostnote
- [bettertouchtool](https://tom106.com/bettertouchtool-sync)
- [Alfred](https://webrandum.net/alfred-syncing/)
- Paste

## 参考リンク

- [bashの表示色をカスタマイズ - Qiita](https://qiita.com/soramugi/items/a726bd64330e08daa9e5)
- [history不要！pecoでLinuxコマンド履歴を爆速で検索](https://suwaru.tokyo/history%E4%B8%8D%E8%A6%81%EF%BC%81peco%E3%81%A7linux%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E5%B1%A5%E6%AD%B4%E3%82%92%E7%88%86%E9%80%9F%E3%81%A7%E6%A4%9C%E7%B4%A2/)
- [ghqでリポジトリ管理とpeco連携で快適git生活 - Qiita](https://qiita.com/strsk/items/9151cef7e68f0746820d)