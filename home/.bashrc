# This is the configuration for interactive bash shells

source ~/.profile

# Mimics the default setup from linux:
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Don't include commands starting with a space in history
export HISTIGNORE="[ \t]*"
# Append to history file
shopt -s histappend

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
if [ -d "$HOME/.asdf" ]; then
  export PATH="$HOME/.asdf/shims:$PATH"
fi

# Adding this here because `brew doctor` reported a path problem
# when adding it only in .profile
if [ -f /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi