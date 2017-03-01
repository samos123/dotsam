set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set number
set expandtab
set list
set path=.,,**
filetype indent on
filetype on
filetype plugin on
syntax on
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
