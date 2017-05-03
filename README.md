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
6. `brew install shpotify`
7. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
8. Copy all files except README.md to your Home dir
9. Edit `.tmux.conf` file to use the system clipboard for copy/pasting
10. iTerm: Enable setting General > Applications in terminal may access clipboard
11. iTerm: Use existing session or create new one Profile > Send text at start as `tmux attach -t init || tmux new -s init`
12. iTerm: Install SourceCodePro font and set it as the font in Profile > Text > Font
13. iTerm: Install Darkside iTerm theme [bahlo iterm-colors GitHub](https://github.com/bahlo/iterm-colors) Profile > Colors > Import

### Ubuntu
1. `sudo apt-get install zsh`
2. `chsh -s $(which zsh)`
3. Follow the instructions at [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
4. `sudo apt-get install tmux`
5. Install [diff so fancy](https://github.com/so-fancy/diff-so-fancy)
6. Copy all files except README.md to your Home dir
7. Install SourceCodePro font for ther terminal

#### Sublime Text 3
1. Install [Source Code Pro Medium Font](https://github.com/adobe-fonts/source-code-pro)
2. Copy settings from Preferences.sublime-settings
