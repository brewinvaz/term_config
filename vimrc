" Pre-setup
set nocompatible
filetype off

" Set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Copy to system clipboard
set clipboard=unnamed

" Vundle - Plugin installation begin"
call vundle#begin()

" Vundle installation - https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" Install plugins
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'

" Color Scheme Plugins
Plugin 'morhetz/gruvbox'

" Javascript Plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
" https://github.com/maksimr/vim-jsbeautify
Plugin 'maksimr/vim-jsbeautify'

" Vundle - Plugin installation end
call vundle#end()

" Change leader to comma
let mapleader=","

" NERDTree shortcut mapping
map <C-n> :NERDTreeToggle<CR> 

" Generic key mappings
noremap <Leader>s :update<CR>

" DelimitMate - Insert new line
imap <C-l> <CR><Esc>O

" Beautify JS
map <Leader>f :call JsBeautify()<CR>
autocmd FileType javascript vnoremap <buffer>  <Leader>f :call RangeJsBeautify()<CR>
autocmd FileType json vnoremap <buffer> <Leader>f :call RangeJsonBeautify()<CR>
autocmd FileType jsx vnoremap <buffer> <Leader>f :call RangeJsxBeautify()<CR>
autocmd FileType html vnoremap <buffer> <Leader>f :call RangeHtmlBeautify()<CR>
autocmd FileType css vnoremap <buffer> <Leader>f :call RangeCSSBeautify()<CR>

" Generic settings
filetype plugin indent on
set number
set cursorline
set clipboard=unnamed
set encoding=utf-8
set nowrap
set hlsearch
set ignorecase
set smartcase
" set nowritebackup
" set nobackup
set noswapfile

" Limit syntax highlighting for long lines, avoid performance issues
set synmaxcol=128 
set ttyscroll=10

" Syntax highlighting
colorscheme gruvbox

set background=dark
syntax enable

" Quick ESC
imap jj <ESC>

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Disable auto-commenting except for /*...*/
inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

" Airline settings
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Easier buffer management
map <leader>n :bn<cr>
map <leader>p :bp<cr>

" Tab between windows
noremap <tab> <c-w><c-w>

" NERDTree show hidden files
let NERDTreeShowHidden=1

" Automatic formatting
autocmd BufWritePre *.html :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" Format file
nmap <leader>fef ggVG=

" Quit with :Q, without saving
command -nargs=0 Quit :qa!

" Source BufOnly
source ~/.vimrc_bufonly 
