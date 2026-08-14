# Bootstrap a new laptop, from dotfiles all the way up to GUI apps

## Installation

1. Install MonoLisa (if that's your jam. It's definitely mine!)
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

# Eliza's New Machine Setup Steps

# Bootstrapping OS X

- [ ] On your old laptop:
    - [ ] Screenshot the extensions arrangement in your preferred browser (in my case brave)
    - [ ] Screenshot (or collect links to) the browser extensions you use
    - [ ] Screenshot how you like your Dock set up
    - [ ] Grab the list of brew packages that you installed (rather than packages you have because another package relies on it):
      * `brew leaves`
    - [ ] If you don't already manage your GUI apps using `homebrew`, grab a list of applications:
      * `ls /Applications`
    - [ ] Export your customized Terminal.app profile(s)
- [ ] Install MonoLisa
- [ ] Clone and run dot files repo (see instructions above)
- [ ] Run 1Password and get it logged in to your 1Password account
- [ ] Install 1Password extension for your browser of choice
- [ ] Log in to GitHub
- [ ] Generate and add new SSH key to GitHub
- Make your computer cozy:
    - [ ] Finder
        - [ ] Settings -> Advanced
            - [ ] Show all filename extensions
            - [ ] When performing search: “Search the current folder”
        - [ ] Settings -> Sidebar
            - [ ] Check the box for the whole device
        - [ ] Settings -> General
            - [ ] New finder windows show: Anything but the recents, imo
        - [ ] View -> “Show path bar”
        - [ ] View -> “Show title bar”
    - [ ] Install Tinker Tools and use it to change:
        - [ ] Dock
            - [ ] Check “Use dimmed icons for hidden applications”
            - [ ] Adjust dock with preferred spaces between the different categories of apps
        - [x] Finder
            - [ ] Show hidden files
            - [ ] Disable sound effects
            - [ ] Add Quit
            - [ ] Show selected path
        - [ ] General
            - [ ] Prefer expanded save dialogs
            - [ ] Screenshots -> Uncheck "Prefer floating thumbnail"
        - [ ] Fonts
            - [ ] Set default Fixed-pitch font to MonoLisa 13
    - [ ] Fix terminal to not use your screen split shortcuts (cmd+shift-arrows) for navigating tabs (instructions TBD- this is a struggle)
    - [ ] System Settings
      - [ ] Remap caps lock to CTRL
        - Search modifier keys -> Set capslock to ctrl
      - [ ] Set up ctrl+scroll to Zoom
        - Accessibility > Zoom; Use scroll gestures with modifier to zoom;
      - [ ] Desktop & Dock
          - [ ] Turn off “drag windows to menu bar to fill screen”
      - [ ] Keyboard shortcuts -> Windows ->
          - [ ] Halves -> Tile Left Half = shift + cmd + left arrow
          - [ ] Halves -> Tile Right Half = shift + cmd + right arrow
    - [ ] Fix save locations:
        - [ ] Don’t save to cloud:
            - [ ] `defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false`
        - [ ] Screenshots
            - [ ] Press Command (⌘) + Shift + 5, click **Options**, and choose your preferred destination under **Save to**.
    - [ ] Install your apps that are App Store-only. e.g:
        - [ ] Bear
        - [ ] Go2shell?
        - [ ] Jolt of Caffeine
    - Set up Terminal.app:
      - [ ] Import your preferred terminal settings
        - Important: Airdropping these without zipping first corrupts them
    - [] Right click Downloads folder in Dock -> show as folder
    - [ ] Brave
        - [ ] Window -> Always show bookmarks bar
        - [ ] Install preferred extensions
        - [ ] brave://settings/appearance > Show tab search button
        - [ ] Turn off cmd q to quit - [Enable  “Show warning before quitting with ⌘Q”](brave://settings/?search=show+warning)
        - [ ] Make sure 1password extension is available in private mode
    - [ ] Firefox, Chrome, etc
        - [ ] Set up 1Password extension
    - [ ] Disable back gesture in browsers (because I apparently can’t scroll straight):
        - [ ] Use the commands here: [https://gist.github.com/babakness/839ee2fb307816a77dbf8feeb3f57d00](https://gist.github.com/babakness/839ee2fb307816a77dbf8feeb3f57d00)
        - [ ] e.g. `defaults write com.brave.Browser AppleEnableSwipeNavigateWithScrolls -bool FALSE` etc
    - [ ] VS Code
      - [ ] Install solarized theme
