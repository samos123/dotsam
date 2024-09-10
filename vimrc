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
Plugin 'prettier/vim-prettier'
Plugin 'andymass/vim-matchup'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'hashivim/vim-terraform'
Plugin 'derekwyatt/vim-scala'

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
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
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

" bind nerdtree to ctrl + n
map <C-n> :NERDTreeToggle<CR>

if &diff
    colorscheme evening
endif

" Better highlighting colors for matchup
hi MatchParen ctermbg=blue guibg=lightblue cterm=italic gui=italic

let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1

let g:terraform_fmt_on_save=1

set clipboard+=unnamedplus
