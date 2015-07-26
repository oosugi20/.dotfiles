# 文字コード
export LANG=ja_JP.UTF-8

# コマンド名間違い時に候補表示
setopt correct


# =================================================================
# PATH

# brew
export PATH=/usr/local/bin:$PATH

# MacVim (mvim)
export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH

# npmモジュールのコマンドにパスを通す
#export PATH=/usr/local/share/npm/bin:$PATH
#export NODE_PATH=`npm root -g`

export EDITOR=mvim

# GEM
export GEM_HOME='/usr/local'

# Git Editor
export GIT_EDITOR='mvim -f'



# プロンプト
autoload colors
colors


autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "+"
zstyle ':vcs_info:git:*' unstagedstr "*"
zstyle ':vcs_info:*' formats ' %{${fg[red]}%}  %b%{${fg[cyan]}%}%c%u%{${fg[red]}%} %{$reset_color%}'

setopt prompt_subst
precmd () {
  LANG=en_US.UTF-8 vcs_info
  if [ -z "${SSH_CONNECTION}" ]; then
    PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} ${vcs_info_msg_0_}
[%n]$ "
  else
    PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} ${vcs_info_msg_0_}
%{${fg[green]}%}[%n@%m]$%{${reset_color}%} "
  fi
}

PROMPT2='[%n]> '


# タブで補完したときに候補リストから選択できるようにする
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1



# ビープ音ならなさない
setopt nobeep


# lsと補間にでる一覧の色
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'


# =================================================================
# Alias

# aliased ls needs if file/dir completions work
setopt complete_aliases

#alias imgopt='((git diff --name-only --diff-filter=ACM && git ls-files --other --exclude-standard) | grep ".*[jpg|png|gif]$" | imageOptim -a -q) && growlnotify -t ImageOptime -m done. -a /Applications/ImageOptim.app'
alias imgopt='((git diff --name-only --diff-filter=ACM && git ls-files --other --exclude-standard) | grep ".*[jpg|png|gif]$" | imageOptim -q) && growlnotify -t ImageOptime -m done. -a /Applications/ImageOptim.app'
alias shttp='python3 -m http.server'
alias chrome='open -a "Google Chrome"'
alias safari='open -a "Safari"'
alias Pv='open -a "Preview"'
alias Pv='open -a "Preview"'
alias Pvpng='open -a "Preview" **/*.png'
alias Pvpsd='open -a "Preview" **/*.psd'
alias Fw='open -a "Adobe Fireworks CS6"'
alias Ps='open -a "Adobe Photoshop CC"'
alias Bb='open -a BBEdit'
alias vihttpd='sudo mvim /etc/apache2/httpd.conf'
alias vivhosts='sudo mvim /etc/apache2/extra/httpd-vhosts.conf'
alias apachectl='sudo apachectl'
alias tower='open -a Tower'
alias c='clear'

alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'

alias android='/Applications/Android\ SDK/tools/android'
alias ios='open -a /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'

alias -s txt=mvim
alias -s md=mvim
alias -s html=mvim
alias -s js=mvim
alias -s coffee=mvim
alias -s css=mvim
alias -s sass=mvim
alias -s scss=mvim
alias -s json=mvim
alias -s rb=mvim
alias -s png=Pv
alias -s jpg=Pv
alias -s psd=Pv
alias -s gif=Pv


alias showdesctop='defaults write com.apple.finder CreateDesktop -boolean true | killall Finder'
alias hidedesctop='defaults write com.apple.finder CreateDesktop -boolean false | killall Finder'

alias minecraft-server='java -jar ~/Documents/Minecraft/minecraft_server.1.7.10.jar'


case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -GFa"
  ;;
linux*)
  alias ls="ls -Fa --color"
  ;;
esac

alias ll='ls -l'

# 環境ごとの設定読み込む
#[ -f ~/.zshrc_ext ] && source ~/.zshrc_ext

# 個別設定を読み込む
#[ -f ~/.zshrc_local ] && source ~/.zshrc_local



# 補完で大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'




# `cd -<Tab>` で履歴表示
# -: 古いのが上
# +: 新しいのが上
setopt auto_pushd

# 重複してpushしない
setopt pushd_ignore_dups

# 保存するディレクトリスタック数
DIRSTACKSIZE=20

# ディレクトリスタックの共有・保存
# ディレクトリスタックをファイルに保存することで端末間で共有したり、
# ログアウトしても残るようにする
# http://sanrinsha.lolipop.jp/blog/2012/02/%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%82%B9%E3%82%BF%E3%83%83%E3%82%AF%E3%82%92%E7%AB%AF%E6%9C%AB%E9%96%93%E3%81%A7%E5%85%B1%E6%9C%89%E3%81%97%E3%81%9F%E3%82%8A%E3%80%81%E4%BF%9D.html
# cdする前に現在のディレクトリを保存
function share_dirs_preexec {
    pwd >> ~/.zshdirs
}
# プロンプトが表示される前にディレクトリスタックを更新する
function share_dirs_precmd {
    if which tac 1>/dev/null 2>&1;then
        TAC=`which tac`
    else
        TAC='tail -r'
    fi

    # 現在のディレクトリに戻ってこれるように書き込む
    pwd >> ~/.zshdirs
    # ファイルの書き込まれたディレクトリを移動することでディレクトリスタックを更新
    while read line
    do
        # ディレクトリが削除されていることもあるので調べる
        [ -d $line ] && cd $line
    done <~/.zshdirs
    # 削除されたディレクトリが取り除かれた新しいdirsを時間の昇順で書き込む
    dirs | tr " " "\n" | sed "s|~|${HOME}|" | eval ${TAC} > ~/.zshdirs
}
# autoload -Uz add-zsh-hookが必要
autoload -Uz add-zsh-hook
add-zsh-hook preexec share_dirs_preexec
add-zsh-hook precmd  share_dirs_precmd



# =================================================================
# 履歴
# http://webtech-walker.com/archive/2008/12/15101251.html

# 履歴を保存するファイル
HISTFILE=$HOME/.zsh_history

# 履歴の件数
HISTSIZE=500000
SAVEHIST=500000

# 重複した履歴を保存しない
setopt hist_ignore_dups

# 履歴を共有する
setopt share_history

# 先頭にスペースを入れると履歴に残さない
setopt hist_ignore_space

# 履歴の検索
# 例えば"ls "とうってからC-pでlsから始まる履歴を検索可能。
# 複数行のコマンドのときはカーソルキーで移動
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

