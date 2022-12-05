# Dev Configurations
This is a place to store my development configurations.

## Setup
There are some things that need to be setup so everything works properly.

### OSX
1. install [homebrew](https://brew.sh/)
1. `brew install zsh`
1. `sudo chsh -s $(which zsh) $USER`
1. Install [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
1. `brew install powerlevel9k` [oh-my-zsh PowerLevel9k Theme GitHub](https://github.com/bhilburn/powerlevel9k)
1. `brew install tmux`
1. `brew install tig`
1. `brew intall delta`
1. Copy all files except README.md to your Home dir
1. Uncomment in .zshrc `source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme` and comment `ZSH_THEME="powerlevel9k/powerlevel9k"`
1. Modify .gitconfig to add `signingKey`
1. `brew install reattach-to-user-namespace`
1. Edit `.tmux.conf` file to use the system clipboard for copy/pasting
1. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
1. iTerm: Enable setting - General > Applications in terminal may access clipboard
1. iTerm: Use existing session or create new one Profile > Send text at start as `tmux attach -t init || tmux new -s init`
1. iTerm: Enable 256 colors by by going to Profile > Terminal and setting Report Terminal Type to xterm-256color
1. iTerm: Install FiraCode Nerd font and set it as the font in Profile > Text > Font
1. iTerm: Install Darkside iTerm theme [bahlo iterm-colors GitHub](https://github.com/bahlo/iterm-colors) Profile > Colors > Import
1. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination
2. If you have permission issues to the usr dir try adding `ZSH_DISABLE_COMPFIX=true` to .zshrc

### Ubuntu
1. install [git](https://git-scm.com/)
1. copy `.gitconfig` from repository
1. Modify .gitconfig to add `email`
1. Modify .gitconfig to add `signingKey`
1. install [homebrew](https://brew.sh/)
1. `sudo apt-get install zsh`
1. `chsh -s $(which zsh)`
1. Follow the instructions at [oh-my-zsh GitHub](https://github.com/robbyrussell/oh-my-zsh)
1. Install [powerlevel10k](https://github.com/romkatv/powerlevel10k)
1. `sudo apt-get install tmux`
1. Install [tmux plugin manager](https://github.com/tmux-plugins/tpm)
1. Install [delta](https://github.com/dandavison/delta)
1. Install [tig](https://jonas.github.io/tig/INSTALL.html)
1. Copy all files except README.md to your Home dir
1. Install xclip `sudo apt install xclip` and edit `.tmux.config` file to use xclip for copy/paste
1. Install tmux plugins using [tmux plugin manager](https://github.com/tmux-plugins/tpm) key combination

### Sublime Text 3
1. Install FiraCode Nerd font
2. Copy settings from Preferences.sublime-settings
