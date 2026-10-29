# Aliases and Environment Variables

export EDITOR="vim"
alias tmux="tmux -2"

# Git aliases via. https://github.com/hashrocket/dotmatrix/blob/master/.sharedrc
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcl='git clean -f -d'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git pull'
alias glg='git log --graph --oneline --decorate --color --all'
alias glod='git log --oneline --decorate'
alias glp='git log -p'
alias gnap='git add -N --ignore-removal . && gap && gref'
alias gp='git push'
alias gplease='git push --force-with-lease'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grim='git rebase -i master'
alias gst='git status'
alias reset-authors='git commit --amend --reset-author -C HEAD'
alias ll='ls -l'

if [ -f ~/.profile.local ]; then
  . ~/.profile.local
fi

# This is here because brew now advises that it go in ./bash_profile/.zprofile instead of the rc files
if [ -n "$ZSH_VERSION" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
elif [ -n "$BASH_VERSION" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv bash)"
fi