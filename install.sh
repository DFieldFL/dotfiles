#!/bin/bash

PACKAGE_MANAGER="NONE"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
PROCESSOR_ARCH="$(uname -m)"

# Determine Package Manager based on OS and Processor arch
if [[ "$(uname)" == "Linux" ]]; then
    if [[ $PROCESSOR_ARCH == "x86_64" ]]; then
        PACKAGE_MANAGER="BREW_LINUX"
    elif [[ $PROCESSOR_ARCH == "arm64" ]]; then
        PACKAGE_MANAGER="NIX_LINUX"
    fi
elif [[ "$(uname)" == "Darwin" ]]; then
    PACKAGE_MANAGER="BREW_MACOS"
fi

# Install Package Manager
if [[ $PACKAGE_MANAGER == "BREW_LINUX" ]]; then
    echo "Install linux homebrew package manager"
    if [[ ! -d /home/linuxbrew ]]; then
        NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    $SCRIPT_DIR/install_scripts/homebrew_packages.sh
fi

if [[ $PACKAGE_MANAGER == "NIX_LINUX" ]]; then
    echo "Install linux nix package manager"
    sh <(curl -L https://nixos.org/nix/install) --daemon
    $SCRIPT_DIR/install_scripts/nix_packages.sh
fi

if [[ $PACKAGE_MANAGER == "BREW_MACOS" ]]; then
    echo "Install macos homebrew package manager"
    if [[ ! -d /opt/homebrew ]]; then
        NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    eval "$(/opt/homebrew/bin/brew shellenv)"
    $SCRIPT_DIR/install_scripts/homebrew_packages.sh
fi

pipx install argcomplete

echo "Defaulting shell to zshell"
echo $(which zsh)
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
if [ -f ~/.gitconfig ]; then
    echo "Backing up ~/.gitconfig to ~/.gitconfig.bak"
    cp ~/.gitconfig ~/.gitconfig.bak
fi

cp -rf "$SCRIPT_DIR/.config" ~/
cp -f "$SCRIPT_DIR/.zshrc" ~/.zshrc
cp -f "$SCRIPT_DIR/.gitconfig" ~/.gitconfig
cp -f "$SCRIPT_DIR/.tigrc" ~/.tigrc

echo "To complete installation by restarting the terminal with zshell..."
echo "Edit .gitconfig to include your email"
echo "Load tmux using command 'tmx' and 'prefix + I' to install plugins..."
