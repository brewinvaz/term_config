"Vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugins list
Plugin 'jelera/vim-javascript-syntax'

"Indenting
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

"Automate sometyping
Plugin 'Raimondi/delimitMate'
"imap <C-c> <CR><Esc>O 

"Linting for javascript
Plugin 'scrooloose/syntastic'
"let g:syntastic_check_on_open=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
"filetype plugin on

"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

syntax on
set t_Co=256
set background=dark
colorscheme distinguished

"Add line numbers
:set nu

"Case insensitive search
:set ic

"size of a hard tabstop
set tabstop=4
"
"size of an "indent"
set shiftwidth=4

"a combination of spaces and tabs are used to simulate tab stops at a width
"other than the (hard)tabstop
set softtabstop=4

"make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

"always uses spaces instead of tab characters
set expandtab

"pathogen - runtime path manipulation for plugins
execute pathogen#infect()

"Load NERDTree at start-up
"autocmd vimenter * NERDTree

"NERDTree shortcut
map <C-n> :NERDTreeToggle<CR> 

"Key Mappings
noremap <Leader>s :update<CR>
