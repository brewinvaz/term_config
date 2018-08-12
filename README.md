Steps to follow
===============

iTerm2
------
1. Import gruvbox-dark colorscheme

Neovim
------
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

Vim Configuration
-----------------
1. Copy vimrc to $HOME
2. Copy BufOnly.vim to $HOME
3. Install Vundle manually 
```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
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


Dash
----
1. Install Dash for documentation (Vim integration only works on Mac)
2. Go to https://kapeli.com/dash and download Dash
