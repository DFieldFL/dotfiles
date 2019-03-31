# Dev Configurations
This is a place to store my development configurations.

## Setup
There are some things that need to be setup so everything works properly.

### OSX
1. `brew install zsh`
2. `sudo chsh -s $(which zsh) $USER`
3. Install [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
4. Install [oh-my-zsh PowerLevel9k Theme GitHub](https://github.com/bhilburn/powerlevel9k)
5. `brew install tmux`
6. `brew install tig`
7. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
8. Copy all files except README.md to your Home dir
9. `brew install reattach-to-user-namespace`
10. Edit `.tmux.conf` file to use the system clipboard for copy/pasting
11. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
12. iTerm: Enable setting - General > Applications in terminal may access clipboard
13. iTerm: Use existing session or create new one Profile > Send text at start as `tmux attach -t init || tmux new -s init`
14. iTerm: Enable 256 colors by by going to Profile > Terminal and setting Report Terminal Type to xterm-256color
15. iTerm: Install FiraCode Nerd font and set it as the font in Profile > Text > Font
16. iTerm: Install Darkside iTerm theme [bahlo iterm-colors GitHub](https://github.com/bahlo/iterm-colors) Profile > Colors > Import
17. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination
18. If you have permission issues to the usr dir try adding `ZSH_DISABLE_COMPFIX=true` to .zshrc

### Ubuntu
1. `sudo apt-get install zsh`
2. `chsh -s $(which zsh)`
3. Follow the instructions at [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
4. `sudo apt-get install tmux`
5. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
6. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
7. Install [tig](https://jonas.github.io/tig/INSTALL.html)
8. Copy all files except README.md to your Home dir
9. Install FiraCode Nerd font for the terminal
10. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination

### Sublime Text 3
1. Install FiraCode Nerd font
2. Copy settings from Preferences.sublime-settings
