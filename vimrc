
" AubreySLavigne vimrc

" Settings {{{1
" Encoding/Whitespace Options {{{2
set encoding=utf-8
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
silent! set nofixeol

" Highlighting {{{2
filetype plugin indent on
syntax on
set hlsearch
set incsearch
setlocal foldmethod=marker      " This file only

" Numbering {{{2
set nu

" Status Line Comments {{{2
set showcmd
set ruler

" Don't create swp files {{{2
set nobackup
set nowritebackup
set noswapfile

" Color Settings {{{2
set t_Co=256

" if filereadable("colors/colors/icansee.vim")
"     colorscheme colors/icansee
" else
"     echo "Error Loading Colorscheme (Is submodule loaded?) - Default to Desert. "
     colorscheme desert
" endif

" Shell Configuration {{{2
set shell=/bin/bash

" ctags Config{{{2
:set tags=~/.vim/tags

" }}}1

" Plugin Config {{{1
" Load Plugins {{{2
execute pathogen#infect('bundle/always/{}')
autocmd FileType * if &ft != '' && isdirectory($HOME . '/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

" NERDTree config {{{2
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1

" vim-closetag config {{{2
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.php'

" vim-ultisnips config {{{2

set runtimepath+=~/.ultisnips

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-Z>"

let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir="~/.ultisnips/UltiSnips"

" Automatic Linting Enging (ALE) config {{{2
let g:ale_linters = {
            \ 'php' : ['php']
            \ }
" }}}1

" Mappings {{{1
" Vim Config files {{{2
nnoremap ,ch :vs ~/.vim/cheats.md<CR>
nnoremap ,rc :tabnew ~/.vim/cheats.md<CR>:vs ~/.vim/vimrc<CR>

" Vim: Bindings for Defaults {{{2
" File Save/Edit {{{3

" Save and Exit the File
noremap zz :x<CR>
vnoremap zz <C-C>:x<CR>

" Exit without Saving
noremap zx :q!<CR>
vnoremap zx <C-C>:q!<CR>

" Exit all Files
noremap za :qa!<CR>
vnoremap za <C-C>:qa!<CR>

" Fast File Save {{{3
nnoremap ,w :w<CR>

" Folding Shortcuts {{{3
" Toggle Current Fold
nnoremap <space> za  

" Tab Navigation {{{3
nnoremap ,ta :tabnew<CR>
nnoremap ,tx :tabclose!<CR>

nnoremap ,tn :tabn<CR>
nnoremap ,tp :tabp<CR>
nnoremap ,t0 :tabfirst<CR>
nnoremap ,t1 :tabfirst<CR>
nnoremap ,t2 :tabfirst<CR>:tabn<CR>
nnoremap ,t3 :tabfirst<CR>:tabn<CR>:tabn<CR>
nnoremap ,t4 :tabfirst<CR>:tabn<CR>:tabn<CR>:tabn<CR>
nnoremap ,t5 :tabfirst<CR>:tabn<CR>:tabn<CR>:tabn<CR>:tabn<CR>
nnoremap ,t$ :tablast<CR>

" }}}2
" Vim: Improvments to Defaults {{{2
" Insert a Blank Line Above/Below Without Insert Mode {{{3
nnoremap ,o ok
nnoremap ,O Oj

" Change Default Behaviors {{{3
" Change to use Blackhole registers
nnoremap x "_x
nnoremap X "_X
nnoremap c "_c
nnoremap C "_C

" Close Preview Window {{{3
noremap ,pc :pc<CR>

" }}}2
" Vim: Complex Actions {{{2
" Break this line at column 80, 120 {{{3
nnoremap ,80 80\|T i 
nnoremap ,120 120\|T i 

" Swap two elements in a tuple (any brace) {{{3
" Undefined behavior if not a tuple
" [abc, def] => [def, abc]
nnoremap ,sw yijdt,/[])}]i, p?[[({]ldw

" Move visual block {{{3
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Insert Author Tag {{{3
nnoremap ,aub iAubrey Lavigne

" Post the currently yanked word, and prepend to word {{{3
nnoremap ,pb viS"_c  PBi

" Toggle Markdown checkboxes {{{3
nnoremap ,k :s/\[ ]/[x]/<CR>
nnoremap ,K :s/\[x]/[ ]/<CR>

" Search current file {{{3
" GoTo Next filepath
nnoremap ,ff /\(\/[A-Za-z_.]*\)\+<CR>

" GoTo Next {VARFIELD}
nnoremap ,[ /{[A-Z]*}<CR>

" GoTo next index that does not have quotes
nnoremap ,woq /\[[A-Za-z][A-Za-z0-9_]\+\]<CR>l

" Load Error File into a buffer {{{3
nnoremap ,err :tabnew<CR>:-1read !tail -n 100 /var/log/php/errors.log<CR>

" Load Templates {{{3
nnoremap ,snip :tabnew ~/.vim/snips/

" }}}2
" Plugins {{{2
" NERDTree {{{3

" Open NERDTree
nnoremap ,ne :NERDTreeToggle<CR>

" GoTo bookmark (keep typing)
nnoremap ,bo :NERDTreeFocus<CR>/--Bo<CR>/\c

" Set NERDTree DocRoot
nnoremap ,nd :Bookmark DocRoot<CR>

" ctags {{{3

" Run ctags in background
nnoremap ,ct :! cd $APPLICATION_DIR/ && ctags -R &>/dev/null &<CR>

" Git/Fugitive {{{3

" Git Add
nnoremap ,ga :Gwrite<CR>

" Git Status
nnoremap ,gs :Gstatus<CR>

" Git Commit
nnoremap ,gc :Gcommit<CR>

" Git Push
nnoremap ,gp :Gpush<CR>

" Set up Marks for resolving conflicts
nnoremap ,mark /<<<<mq/====ma/>>>>mz
nnoremap ,delm 'qd'z

" Git/Fugitive {{{3
nnoremap ,U :UltiSnipsEdit<CR>

" }}}2
" External Programs {{{2
" Install composer.yml {{{3

nnoremap ,compose :w<CR>:lcd %:p:h<CR>:!composer update<CR>

" Run PHPUnit Tests {{{3

nnoremap ,test :! cd $TEST_DIR && phpunit --bootstrap=bootstrap.php --no-coverage % > /tmp/tests<CR>:vs /tmp/tests<CR>LmT
nnoremap ,ret lzx,test

" Change Modified Phinx File to up/down methods {{{3

nnoremap ,phm /n cwciwupkd%4yy3jap2wciwdownkkki        

" Phinx Shortcut {{{3

nnoremap ,phinx :!cd $APPLICATION_DIR && phinx --configuration=conf_files/application/phinx.php 

" }}}1

