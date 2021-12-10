# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk


# Zsh設定
## テーマ（.p10k.zshファイルで詳細設定）
zinit ice depth=1; zinit light romkatv/powerlevel10k

## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

## コマンド補完
zinit ice wait'0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1 

## シンタックスハイライト
zinit light zsh-users/zsh-syntax-highlighting

## 履歴補完
zinit light zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=243"

## 入力した文字から始まるコマンドを履歴から検索し、上下矢印で補完
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

## 履歴保存管理
HISTFILE=$ZDOTDIR/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

## 他のzshと履歴を共有
setopt inc_append_history
setopt share_history

## パスを直接入力してもcdする
setopt AUTO_CD

## 環境変数を補完
setopt AUTO_PARAM_KEYS

## peco
### コマンド履歴インタラクティブ検索
function peco-history-selection() {
  BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

### コマンド履歴からディレクトリ検索・移動
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
  autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
  add-zsh-hook chpwd chpwd_recent_dirs
  zstyle ':completion:*' recent-dirs-insert both
  zstyle ':chpwd:*' recent-dirs-default true
  zstyle ':chpwd:*' recent-dirs-max 1000
  zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi
function peco-cdr () {
  local selected_dir="$(cdr -l | sed 's/^[0-9]* *//' | peco)"
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
}
zle -N peco-cdr
bindkey '^E' peco-cdr

### gitリポジトリ検索・移動
function peco-src () {
  local selected_dir=$(ghq list -p | peco)
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
}
zle -N peco-src
bindkey '^G' peco-src

### カレントディレクトリ以下のディレクトリ検索・移動
function find_cd() {
  local selected_dir=$(find . -type d | peco)
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
}
zle -N find_cd
bindkey '^X' find_cd

### pk で実行中のプロセスを選択して kill
function peco-pkill() {
  for pid in `ps aux | peco | awk '{ print $2 }'`
  do
    kill $pid
    echo "Killed ${pid}"
  done
}
alias pk="peco-pkill"


# alias
alias ls="gls --color=auto"
alias la="gls --color=auto -la"
alias ll="gls --color=auto -l"
alias cp="cp -i"
alias rm='rm -i'
alias mv='mv -i'

alias g="git"
# alias gs="git status -s"  // tigで表示できるのでコメントアウト
alias gf="git fetch"
alias ga="git add ."
alias gcm="git commit -m"
alias gcnm="git commit --no-verify -m"
alias gp="git pull"
alias gpr="git pull --rebase"
alias gb="git branch"
alias gba="git branch -a"
alias gbm="git branch --merged"
alias gbnm="git branch --no-merged"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gs="git switch"
alias gsc="git switch -c"
alias grs="git restore"
alias gl="git log"
alias glo="git log --oneline"
alias gr="git reset"
alias gps="git push"
alias gpsu="git symbolic-ref --short HEAD | tr -d "\n" | xargs -I@ git push -u origin @" #カレントブランチで `git push -u` を行う
alias gpst="git push origin --tags"
alias gss="git stash save"
alias gsa="git stash apply"
alias gsd="git stash drop"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias grb="git rebase"
alias grbc="git rebase --continue"
alias arba="git rebase --abort"

alias v="vim"
alias t="tig"
alias szp="source ~/.zsh/.zprofile"
alias szr="source ~/.zsh/.zshrc"
alias es='exec $SHELL -l'
alias path="echo $PATH | tr ':' '\n'"
alias pngq="pngquant --ext .png --force --speed 1"

alias bs="brew search"
alias bi="brew info"

alias ns="npm run start"
alias ys="yarn start"
alias ysb="yarn storybook"
alias yt="yarn test"
alias yb="yarn build"

alias d="docker"
alias dp="docker ps"
alias dpa="docker ps -a"
alias dil="docker image ls"

# others
## mkdir & cd
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
