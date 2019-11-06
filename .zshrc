# .bashrc は対話モードの bash を起動する時に毎回実行されます。具体的な用途は:
#   環境変数でない変数を設定する (export しない変数)
#   エイリアスを定義する
#   シェル関数を定義する
#   コマンドライン補完の設定をする
# これらは bash を起動する度に毎回設定する必要があるものです。
###################################################################

#####################
# zplugin
#export ZPLUG_HOME=/usr/local/opt/zplug
#source $ZPLUG_HOME/init.zsh


#####################
# 補完
## 補完機能を有効化
autoload -U compinit; compinit
## 補完候補をカーソルキーで選択
zstyle ':completion:*:default' menu select=1
## 大文字、小文字を区別せず補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#####################
# オプション
## beepを無効にする
setopt no_beep
## Ctrl+Dでzshを終了しない
setopt ignore_eof
## '#' 以降をコメントとして扱う
setopt interactive_comments
## 連続した同じコマンドをヒストリに残さない
setopt hist_ignore_dups

#####################
# プロンプト
#PROMPT="
#┌─ %F{red}%n@%m%f: %F{blue}%~%f
#└─ %F{green}%D{%Y-%m-%d %T}%f $ "
#PROMPT2="└─ %F{green}%D{%Y-%m-%d %T}%f $ "
eval "$(starship init zsh)"

#####################
# anyenv設定
eval "$(anyenv init -)"

#####################
# エイリアス定義
## ls
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias llh='ls -lh'
alias llha='ls -lha'
alias ls='ls -G -F'
## terminal_velocity
alias tv='terminal_velocity'
## pyenvでPython3をインストールすることでbrew doctorに出てしまうcnofigファイルの警告を抑止する。
## https://qiita.com/shiro000/items/0aced97d2a77702a376a
## 最低限必要なPATHだけを一時的にセットして実行
BREW_EXEC_PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
alias brew="env PATH=$BREW_EXEC_PATH brew"
## diffをcolordiff（Homebrewでインストール）に置換
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
