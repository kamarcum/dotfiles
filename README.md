# Manage dotfiles

## Installation

1. Install MonoLisa (if that's your jam. It's definitely mine!)
2. Do the basic setup for SSH keys in GitHub
3. Clone this repo
  - `git clone https://github.com/elizamarcum/dotfiles $HOME/.dotfiles`
4. Run the setup script
  - `bash $HOME/.dotfiles/script/setup`

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

## Changes when upgrading from a pre-2026 version of these files

* `.bash_aliases` has been renamed to `.profile`
* Support for `.bash_aliases` in the rc files themselves has been maintained
* The script now renames `.bash_aliases.local` to `.profile.local`
