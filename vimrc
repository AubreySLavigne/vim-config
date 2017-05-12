
" Whitespace Options
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

" Highlighting
set hlsearch

" Numbering
set nu

" Command Line Comments
set showcmd

" Color Settings
set t_Co=256
if filereadable("colors/colors/icansee.vim")
    echo "Colorscheme Loaded Correctly"
    colorscheme colors/icansee
else
    echo "Error Loading Colorscheme (Is submodule loaded?) - Default to Desert"
    colorscheme desert
endif


