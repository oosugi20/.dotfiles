# 文字コード
export LANG=ja_JP.UTF-8


source ~/.dotfiles/.zshrc.path
source ~/.dotfiles/.zshrc.prompt


# GEM
export GEM_HOME='/usr/local'


export EDITOR=mvim

# Git Editor
export GIT_EDITOR='mvim -f'




source ~/.dotfiles/.zshrc.alias



# ビープ音ならなさない
setopt nobeep



# コマンド名間違い時に候補表示
setopt correct


# タブで補完したときに候補リストから選択できるようにする
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1


# 補完で大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# lsと補間にでる一覧の色
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'



source ~/.dotfiles/.zshrc.dirs
source ~/.dotfiles/.zshrc.history
