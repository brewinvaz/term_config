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

" Auto-completion, snippet engine and snippets
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Color Scheme Plugins
Plugin 'morhetz/gruvbox'
Plugin 'helino/vim-json'

" Javascript Plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'maksimr/vim-jsbeautify'

" JSX Plugin
Plugin 'mxw/vim-jsx'

" Vundle - Plugin installation end
call vundle#end()

" Change leader to comma
let mapleader=","

" NERDTree shortcut mapping
map <C-n> :NERDTreeToggle<CR> 

" Generic key mappings
noremap <leader>s :update<CR>

" Enable tern shortcuts and hints
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" YouCompleteMe and UltiSnips settings
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion=1

" DelimitMate - Insert new line
imap <C-l> <CR><Esc>O

" Beautify JS
map <leader>rn :call JsBeautify()<CR>
autocmd FileType javascript vnoremap <buffer>  <leader>rn :call RangeJsBeautify()<CR>
autocmd FileType json vnoremap <buffer> <leader>rn :call RangeJsonBeautify()<CR>
autocmd FileType jsx vnoremap <buffer> <leader>rn :call RangeJsxBeautify()<CR>
autocmd FileType html vnoremap <buffer> <leader>rn :call RangeHtmlBeautify()<CR>
autocmd FileType css vnoremap <buffer> <leader>rn :call RangeCSSBeautify()<CR>

" Enable JSX code in .js files
let g:jsx_ext_required = 0

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
set nowritebackup
set nobackup
set noswapfile

" Limit syntax highlighting for long lines, avoid performance issues
set synmaxcol=128 
set ttyscroll=10

" Syntax highlighting
colorscheme gruvbox
set background=dark
syntax enable

" Quick ESC
imap jk <ESC>

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
map <leader>b :bp<cr>

" Tab between windows
noremap <tab> <c-w><c-w>

" NERDTree show hidden files
let NERDTreeShowHidden=1

" Enable code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Automatic formatting
autocmd BufWritePre *.html :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" Format file
nmap <leader>fef ggVG=

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" Quit with :Q, without saving
command -nargs=0 Quit :qa!

" Source BufOnly
source ~/.vimrc_bufonly 
