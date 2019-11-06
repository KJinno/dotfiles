# .bashrc は対話モードの bash を起動する時に毎回実行されます。具体的な用途は:
#   環境変数でない変数を設定する (export しない変数)
#   エイリアスを定義する
#   シェル関数を定義する
#   コマンドライン補完の設定をする
# これらは bash を起動する度に毎回設定する必要があるものです。
###################################################################

#brew cleanupを自動的に定期実行する設定
HOMEBREW_UPGRADE_CLEANUP=1

# Homebrew Cask設定
## インストールしたアプリのリンクをアプリケーションフォルダに格納
HOMEBREW_CASK_OPTS="--appdir=/Applications"

# エイリアス定義
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias llh='ls -lh'
alias llha='ls -lha'
alias tv='terminal_velocity'

# pyenvでPython3をインストールすることでbrew doctorに出てしまうcnofigファイルの警告を抑止する。
# https://qiita.com/shiro000/items/0aced97d2a77702a376a
# 最低限必要なPATHだけを一時的にセットして実行
BREW_EXEC_PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
alias brew="env PATH=$BREW_EXEC_PATH brew"

# プロンプトの表示
PS1="\n┌─ \[\e[31m\]\u@\h\[\e[0m\]: \[\e[36m\]\w\[\e[0m\]\n└─ \[\e[32m\]\D{%m-%d} \t \[\e[0m\]\$ "
