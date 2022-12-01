# Dev Configurations
This is a place to store my development configurations.

## Setup
There are some things that need to be setup so everything works properly.

### OSX
1. `brew install zsh`
2. `sudo chsh -s $(which zsh) $USER`
3. Install [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
4. `brew install powerlevel9k` [oh-my-zsh PowerLevel9k Theme GitHub](https://github.com/bhilburn/powerlevel9k)
5. `brew install tmux`
6. `brew install tig`
7. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
8. Copy all files except README.md to your Home dir
9. Uncomment in .zshrc `source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme` and comment `ZSH_THEME="powerlevel9k/powerlevel9k"`
10. Modify .gitconfig to add `signingKey`
11. `brew install reattach-to-user-namespace`
12. Edit `.tmux.conf` file to use the system clipboard for copy/pasting
13. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
14. iTerm: Enable setting - General > Applications in terminal may access clipboard
15. iTerm: Use existing session or create new one Profile > Send text at start as `tmux attach -t init || tmux new -s init`
16. iTerm: Enable 256 colors by by going to Profile > Terminal and setting Report Terminal Type to xterm-256color
17. iTerm: Install FiraCode Nerd font and set it as the font in Profile > Text > Font
18. iTerm: Install Darkside iTerm theme [bahlo iterm-colors GitHub](https://github.com/bahlo/iterm-colors) Profile > Colors > Import
19. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination
20. If you have permission issues to the usr dir try adding `ZSH_DISABLE_COMPFIX=true` to .zshrc

### Ubuntu
1. `sudo apt-get install zsh`
2. `chsh -s $(which zsh)`
3. Follow the instructions at [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
4. `sudo apt-get install tmux`
5. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
6. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
7. Install [tig](https://jonas.github.io/tig/INSTALL.html)
8. Copy all files except README.md to your Home dir
9. Uncomment in .zshrc `ZSH_THEME="powerlevel9k/powerlevel9k"` and comment `source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme`
10. Modify .gitconfig to add `signingKey`
11. Install FiraCode Nerd font for the terminal
12. Install xclip `sudo apt install xclip` and edit `.tmux.config` file to use xclip for copy/paste
12. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination

### Sublime Text 3
1. Install FiraCode Nerd font
2. Copy settings from Preferences.sublime-settings
