#! /bin/bash

#Install Hombrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to the path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
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

# Install  Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#Install powerlevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Install ZSH Plugins

#auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Install Neovim
brew install neovim

#Stow dotfiles
if test ~/.gitconfig; then mv ~/.gitconfig ~./gitconfig-bak; fi
stow git
if test ~/.config/nvim; then mv ~/.config/nvim ~/.config/nvim-bak; fi
stow nvim
if test ~/.zshrc; then mv ~/.zshrc ~/.zshrc-bak; fi
stow zsh
