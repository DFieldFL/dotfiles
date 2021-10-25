filetype plugin indent on
syntax on
set path=$PWD/**
set wildmode=full

set splitbelow "Splits open below instead of top"
set number relativenumber
set softtabstop=4 "use 4 spaces for tab"
set expandtab "use spaces instead of tabs"
set noswapfile
set hidden "allow switching buffers without writting to disk"

let g:netrw_liststyle=3 "tree style display"

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Puts yank onto the os clipboard
set clipboard=unnamed

" File Explorer
let g:netrw_banner = 0
let g:netrw_winsize = 25

set tabstop=4
set shiftwidth=4
set expandtab

" Theme
let g:seoul256_background = 233
colo seoul256
