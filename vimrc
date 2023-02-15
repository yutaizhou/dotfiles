" Interface
syntax on 
colorscheme desert
set number relativenumber
set cursorline
set ruler
set backspace=indent,eol,start

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif

" Indentation
set autoindent
set expandtab
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set shiftround
set smarttab

set lbr
set tw=500

set ai
set si
set wrap

" Key mappings
map H ^
map L $
