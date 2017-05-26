
" Encoding/Whitespace Options
set encoding=utf-8
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
    echo "Error Loading Colorscheme (Is submodule loaded?) - Default to Desert. "
    colorscheme desert
endif


""""""""""""""""""
" Plugin Options "
""""""""""""""""""

execute pathogen#infect()
filetype plugin indent on


""""""""""
" Macros "
""""""""""

" Insert Author Tag
let @a='iAubrey Lavigne'

" Swap two elements in a tuple (any brace)
" Undefined behavior if not a tuple
" [abc, def] => [def, abc]
let @s='yijdt,/[])}]i, p?[[({]ldw'

" Post the currently yanked word, and prepend to word
let @r='viS"_c  PBi'


""""""""""""
" Mappings "
""""""""""""

" Load .vim/ files with shortcut
nnoremap ,ch :vs ~/.vim/cheats.md<CR>
nnoremap ,rc :vs ~/.vim/vimrc<CR>

" Change `zz` to save and exit the file
noremap zz :x<CR>
vnoremap zz <C-C>:x<CR>
inoremap zz <C-O>:x<CR>

noremap zx :q!<CR>
vnoremap zx <C-C>:q!<CR>
inoremap zx <C-O>:q!<CR>

" Add Current File to Repo (git) and exit the file
nnoremap ,ga :Gwrite<CR>:q!<CR>

