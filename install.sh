#!/bin/bash

if [ ! -d /opt/homebrew ] && [ ! -d /home/linuxbrew ]; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

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

echo "Setting up dotfiles"
if [ -d ~/.config ]; then
  echo "Backing up ~/.config to ~/.config.bak"
  cp -r ~/.config ~/.config.bak
fi
if [ -f ~/.zshrc ]; then
  echo "Backing up ~/.zshrc to ~/.zshrc.bak"
  cp ~/.zshrc ~/.zshrc.bak
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

cp -rf "$SCRIPT_DIR/.config" ~/
cp -f "$SCRIPT_DIR/.zshrc" ~/.zshrc
cp -f "$SCRIPT_DIR/.tigrc" ~/.tigrc

echo "To complete installation by restarting the terminal with zshell..."
echo "Load tmux using command 'tmx' and 'prefix + I' to install plugins..."
