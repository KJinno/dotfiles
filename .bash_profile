# bash_profile はログイン時にのみ実行されます。具体的な用途は:
#   環境変数を設定する (export する変数)
# 環境変数はプロセス間で勝手に受け継がれるのでログイン時のみ設定すれば十分です。
##################################################################

# brew edit, brew cask editで使用するエディタ
export HOMEBREW_EDITOR="/usr/local/bin/code"

# mac OS Catalinaでbashを使う場合の警告を非表示にする
export BASH_SILENCE_DEPRECATION_WARNING=1

# anyenv設定
#PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

test -r ~/.bashrc && . ~/.bashrc
