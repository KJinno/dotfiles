# bash_profile はログイン時にのみ実行されます。具体的な用途は:
#   環境変数を設定する (export する変数)
# 環境変数はプロセス間で勝手に受け継がれるのでログイン時のみ設定すれば十分です。
##################################################################

# lsに色をつける
export LSCOLORS=gxfxcxdxbxegexabagacad

# brew cleanupを自動的に定期実行する設定
export HOMEBREW_UPGRADE_CLEANUP=1

# Homebrew Cask設定
## インストールしたアプリのリンクをアプリケーションフォルダに格納
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# brew edit, brew cask editで使用するエディタ
export HOMEBREW_EDITOR="/usr/local/bin/code"
