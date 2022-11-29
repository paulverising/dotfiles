#! /bin/bash

#Install Hombrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to the path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#Install iterm2
brew install --cask iterm2

#Install git, github cli, stow
brew install git
brew install gh
brew install stow

#Install Sublime
brew install --cask sublime-text

#Install vscode
brew install --cask visual-studio-code

#Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

#Install Neovim
brew install neovim

#Stow dotfiles
if test ~/.gitconfig; then mv ~/.gitconfig ~/.gitconfig-bak; fi
stow git
if test ~/.config/nvim; then mv ~/.config/nvim ~/.config/nvim-bak; fi
stow nvim
if test ~/.zshrc; then mv ~/.zshrc ~/.zshrc-bak; fi
stow zsh
