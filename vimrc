"Pre-setup
set nocompatible
filetype off

"Set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"Vundle - Plugin installation begin"
call vundle#begin()

"Vundle installation - https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

"Install plugins
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nanotech/jellybeans.vim'

"Vundle - Plugin installation end
call vundle#end()

"NERDTree shortcut mapping
map <C-n> :NERDTreeToggle<CR> 

"Change leader to comma
let mapleader=","

"Generic key mappings
noremap <Leader>s :update<CR>

"Generic settings
filetype plugin indent on
set number
set cursorline
set clipboard=unnamed
set encoding=utf-8
set nowrap
set hlsearch
set ignorecase
set smartcase
"set nowritebackup
"set nobackup
"set noswapfile

"Limit syntax highlighting for long lines, avoid performance issues
set synmaxcol=128 
set ttyscroll=10

"Syntax highlighting
color jellybeans
syntax enable

"Quick ESC
imap jj <ESC>

"Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"Automatic formatting
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

"Format file
nmap <leader>fef ggVG=

"Quit with :Q, without saving
command -nargs=0 Quit :qa!
