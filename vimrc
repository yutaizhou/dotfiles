let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
" Plug 'valloric/youcompleteme'
call plug#end()

" Interface
syntax on 
colorscheme codedark
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
