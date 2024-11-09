export GPG_TTY=$(tty)

autoload -U compinit && compinit

if [[ $(uname) == "Darwin" ]]; then
    if [[ -f /opt/homebrew/bin/brew ]]; then
        # echo "sourcing brew for macos"
        eval "$(/opt/homebrew/bin/brew shellenv)"
        source /opt/homebrew/opt/zinit/zinit.zsh
    fi
elif [[ $(uname) == "Linux" ]]; then
    if [[ $(uname -m) == "x86_64" && -f /opt/homebrew/bin/brew ]]; then
       # echo "sourcing brew for linux"
       eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
       source /home/linuxbrew/.linuxbrew/opt/zinit/zinit.zsh
    elif [[ $(uname -m) == "arm64" ]]; then
       echo "TODO sourcing nix for linux"
    fi
fi

# plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# snippets
zinit snippet OMZP::command-not-found
zinit ice as"completion"
zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

# load completions
autoload -U compinit && compinit
zinit cdreplay -q

# oh-my-posh is not compatible with Mac's default terminal
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/catppuccin_mocha.omp.json)"
fi

# Keybindings
bindkey -v

# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# export KUBECONFIG=~/.kube/config

# Aliases
alias lz='eza'
alias ll='lz --all --long --header'
alias d='docker'
alias g='git'
alias k='kubectl'
alias projs='cd ~/Projects'
alias tmx='tmux new -As init'

# pipx
export PATH="$PATH:$HOME/.local/bin"

eval "$(register-python-argcomplete pipx)"
source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"
