# This is the configuration for interactive zsh shells

# ZSH history configuration via. https://hassek.github.io/zsh-history-tweaking/
HISTSIZE=10000       # Store 10,000 history entries
SAVEHIST=10000       # This is required to actually save them, needs to match with HISTSIZE
HISTFILE=~/.zhistory # Save them on this file

setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don\'t record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don\'t record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don\'t write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
if [ -d "$HOME/.asdf" ]; then
  export PATH="$HOME/.asdf/shims:$PATH"
fi

OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
if [[ $OS == "darwin" ]]; then
  # Load the homebrew completions
  autoload -Uz compinit
  compinit
  # Ignore case when autocompleting in the command line
  zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
fi

# Adding this here because `brew doctor` reported a path problem
# when adding it only in .profile
if [ -f /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi