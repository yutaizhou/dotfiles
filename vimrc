" Interface
syntax on 
colorscheme desert
set relativenumber
set cursorline
set ruler

" Search
set ignorecase

let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
