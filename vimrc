" There's no need to keep compatibility with the old 'vi'
set nocompatible

" Numbered lines
set number

" Activate mouse selection
set mouse=a

" Enable code syntax
syntax enable

" Enable code syntax by file extension
filetype plugin on

set ruler
set encoding=utf-8
set clipboard+=unnamed

set hlsearch     " highlight matches
set incsearch    " incremental searching
set ignorecase   " searches are case insensitive...
set smartcase    " ... unless they contain at least one capital letter

inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
