# Manage dotfiles

## Installation

```
git clone https://github.com/kamarcum/dotfiles $HOME/.dotfiles
bash $HOME/.dotfiles/script/setup
```

If you don't want packer, add `SKIP_PACKER=true` to the script command above.

## Structure

```
 + .dotfiles
    + README.md        you are here.
    |
    + home/            dotfiles that are copied or symlinked to ${HOME}
    | .somefile        the actual managed dotfile that is symlinked
    | .somefile.local  customizable config files, copied to ${HOME}; loaded in by the same-prefixed dotfile
    |
    + scripts/        scripts for managing dotfiles
```
