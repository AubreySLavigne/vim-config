
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

" Shell Configuration
set shell=/bin/bash

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

" Break this line at column 80
let @j='80|T i k$'

" Post the currently yanked word, and prepend to word
let @r='viS"_c  PBi'

" Swap two elements in a tuple (any brace)
" Undefined behavior if not a tuple
" [abc, def] => [def, abc]
let @s='yijdt,/[])}]i, p?[[({]ldw'

" Convert old style array (`array($val)`) to new style (`[$val]`)
let @t='5h/arraydiwcs(['


""""""""""""
" Mappings "
""""""""""""

" Load .vim/ files with shortcut
nnoremap ,ch :vs ~/.vim/cheats.md<CR>
nnoremap ,rc :vs ~/.vim/vimrc<CR>

" Save and Exit the File
noremap zz :x<CR>
vnoremap zz <C-C>:x<CR>

" Exit without Saving
noremap zx :q!<CR>
vnoremap zx <C-C>:q!<CR>

" Exit all Files
noremap za :qa!<CR>
vnoremap za <C-C>:qa!<CR>

" Add Current File to Repo (git) and exit the file
nnoremap ,ga :Gwrite<CR>:q!<CR>

" Open NERDTree
nnoremap ,ne :NERDTree<CR>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Phinx Shortcut
nnoremap ,phinx :!phinx --configuration=$CONF_DIR/phinx.php 

" Change Modified Phinx File to up/down methods
nnoremap ,phm /n cwciwupkd%4yy3jap2wciwdownkkki        

" Tab Navigation
nnoremap ,tn :tabn<CR>
nnoremap ,tp :tabp<CR>


""""""""""""""""""
" Quick Snippets "
""""""""""""""""""

nnoremap <Leader>table :-1read ~/.vim/snips/phinxTable<CR>f{w
