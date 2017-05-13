set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'


call vundle#end()            " required
filetype plugin indent on    " required
filetype on
syntax on


set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set number
set expandtab
set list
set path=.,,**
set foldmethod=indent
set foldlevel=99

let mapleader = ","

" Show full path on status bar with column
set laststatus=2
set statusline+=col:\ %c,\ 
set statusline+=%F

" Sudo write
command W w !sudo tee % > /dev/null

" Fix .md files to use markdown syntax
au BufRead,BufNewFile *.md set filetype=markdown
