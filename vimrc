execute pathogen#infect()
execute pathogen#helptags()

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
nmap <leader>a <Esc>:Ack!

" python-mode vim plugin


" Custom plugins
map <C-n> :NERDTreeToggle<CR>

" Automatically save when pressing escape
"inoremap <Esc> <Esc>:w<CR>

" Show full path on status bar with column
set laststatus=2
set statusline+=col:\ %c,\ 
set statusline+=%F

" Sudo write
command W w !sudo tee % > /dev/null

" Fix .md files to use markdown syntax
au BufRead,BufNewFile *.md set filetype=markdown
