if [ ! -d /opt/homebrew ] && [ ! -d /home/linuxbrew ]; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if [ "$(uname)" == "Darwin" ]; then
    # echo "sourcing mac"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ "$(uname)" == "Linux" ]; then
    # echo "sourcing linux"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi

  brew update
  brew install wget git zsh zinit tmux tpm zoxide eza bat fzf btop tig jesseduffield/lazygit/lazygit k9s neovim diff-so-fancy jandedobbeleer/oh-my-posh/oh-my-posh

  echo "Defaulting shell to zshell"
  sudo chsh -s $(which zsh) $(whoami)

  echo "To complete installation by restarting the terminal with zshell..."
  echo "Load tmux using command 'tmx' and 'prefix + I' to install plugins..."
fi
