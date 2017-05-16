
" Whitespace Options
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

" Highlighting
syntax on
set hlsearch
set incsearch

" Numbering
set nu

" Status Line Comments
set showcmd
set ruler

" Don't create swp files
set nobackup
set nowritebackup
set noswapfile

" Color Settings
set t_Co=256

if filereadable("colors/colors/icansee.vim")
    colorscheme colors/icansee
else
    echo "Error Loading Colorscheme (Is submodule loaded?) - Default to Desert"
    colorscheme desert
endif


" Plugin Options
execute pathogen#infect()
filetype plugin indent on


""""""""""
" Macros "
""""""""""

" Insert Author Tag
let @a='iAubrey Lavigne'

" Swap two elements in square brackets
" [abc, def] => [def, abc]
" Undefined behavior if not a tuple
let @s='di[PT[d/,t]a, pT[dw'

""""""""""""
" Mappings "
""""""""""""

" Load Cheat File with ,cheat
nnoremap ,cheat :vs ~/.vim/cheats.md<CR>

" Change `zz` to save and exit the file
noremap zz :x<CR>
vnoremap zz <C-C>:x<CR>
inoremap zz <C-O>:x<CR>

