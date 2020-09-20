Steps to follow
===============

## Terminal Configuration

### iTerm2 (macOS)

1. Import gruvbox-dark colorscheme

### Terminal App (Windows 10)

1. Import Terminal App (enable WSL2 and install any *nix flavor)

## Shell Configuration

1. Install Zsh (https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
2. Install Oh My Zsh for Zsh configuration management (https://github.com/ohmyzsh/ohmyzsh)
3. Optionally, install the powerline10K Zsh theme (https://github.com/romkatv/powerlevel10k)
4. Copy tmux.conf 
```sh
cp tmux.conf to ~/.tmux.conf
```

## Code Editor Configuration

### Vim Configuration

1. Copy vimrc to $HOME
2. Copy BufOnly.vim to $HOME
3. Install Vundle manually 
```sh
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
```
4. Comment colorscheme so that vimrc loads correctly
```sh
" colorscheme gruvbox
```
5. Install Plugins
```sh
:PluginInstall
```
6. Complete YouCompleteMe installation (https://github.com/Valloric/YouCompleteMe)

### Neovim

1. Install Neovim - https://github.com/neovim/neovim/wiki/Installing-Neovim
2. Create init.vim under ~/.config/nvim 
3. Add the following to init.vim to source vimrc into nvim
```sh
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc
```
4. In nvim, check health of the installation and resolve any dependencies
```sh
:CheckHealth
```

## Other Configuration

### Flake8 Config (Python Projects)

1. Copy flake8 to the user's home directory
```sh
cp flake8 $HOME/.config/flake8
```

### Dash (macOS)

1. Install Dash for documentation (Vim integration only works on Mac)
2. Go to https://kapeli.com/dash and download Dash
3. Vim plugin - https://github.com/rizzatti/dash.vim

### MacOS

1. Install ack to support ack.vim
```sh
brew install ack
```
