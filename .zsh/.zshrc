export LANG=ja_JP.UTF-8
# 文字コード


# ビープ音ならなさない
setopt nobeep

# iTerm2でキー入力後のディレイをなくす
KEYTIMEOUT=0


# GEM
export GEM_HOME='/usr/local'


#export EDITOR=mvim
#
## Git Editor
#export GIT_EDITOR='mvim -f'




fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0 --reverse))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}
# fd - cd to selected directory
#fd() {
#  local dir
#  dir=$(find ${1:-.} -path '*/\.*' -prune \
#                  -o -type d -print 2> /dev/null | fzf +m --reverse) &&
#  cd "$dir"
#}
# Another fd - cd into the selected directory
# This one differs from the above, by only showing the sub directories and not
#  showing the directories within those.
fd() {
  DIR=`find * -maxdepth 0 -type d -print 2> /dev/null | fzf-tmux --reverse` \
    && cd "$DIR"
}
# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m --reverse) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}


source ~/.dotfiles/.zsh/.zshrc.path
source ~/.dotfiles/.zsh/.zshrc.prompt
source ~/.dotfiles/.zsh/.zshrc.alias
source ~/.dotfiles/.zsh/.zshrc.complement
source ~/.dotfiles/.zsh/.zshrc.dirs
source ~/.dotfiles/.zsh/.zshrc.history
