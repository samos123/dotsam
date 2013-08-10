execute pathogen#infect()

set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set expandtab
set list
set path=.,,**
filetype indent on
filetype on
filetype plugin on
syntax on


" Custom plugins
map <C-n> :NERDTreeToggle<CR>

" Automatically save when pressing escape
"inoremap <Esc> <Esc>:w<CR>

" Show full path on status bar
set laststatus=2
set statusline+=%F
