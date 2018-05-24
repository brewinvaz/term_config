Steps to follow
===============

Vim Configuration
-----------------
1. Copy vimrc to $HOME
2. Copy BufOnly.vim to $HOME
3. Install Vundle manually - git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

Neovim
------
1. Install Neovim - https://github.com/neovim/neovim/wiki/Installing-Neovim
2. Create init.vim under ~/.config/nvim 
3. Add the following to init.vim to source vimrc into nvim
``` set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc
```
4. In nvim, run :CheckHealth and resolve any dependencies
