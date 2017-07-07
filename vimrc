
" Encoding/Whitespace Options
set encoding=utf-8
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
silent! set nofixeol

" Highlighting
filetype plugin indent on
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

" if filereadable("colors/colors/icansee.vim")
"     colorscheme colors/icansee
" else
"     echo "Error Loading Colorscheme (Is submodule loaded?) - Default to Desert. "
     colorscheme desert
" endif

" Shell Configuration
set shell=/bin/bash

"-----------------
" Plugin Options "
"-----------------

execute pathogen#infect('bundle/always/{}')
autocmd FileType * if &ft != '' && isdirectory($HOME . '/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

" Turn NERDTree on with bookmarks, at startup
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1

" Close HTML tags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.php'

"-----------
" Mappings "
"-----------

" Load .vim/ files with shortcut
nnoremap ,ch :vs ~/.vim/cheats.md<CR>
nnoremap ,rc :tabnew ~/.vim/cheats.md<CR>:vs ~/.vim/vimrc<CR>

" Save and Exit the File
noremap zz :x<CR>
vnoremap zz <C-C>:x<CR>

" Exit without Saving
noremap zx :q!<CR>
vnoremap zx <C-C>:q!<CR>

" Exit all Files
noremap za :qa!<CR>
vnoremap za <C-C>:qa!<CR>

" Close Preview Window
noremap ,pc :pc<CR>

" Fast File Save
nnoremap ,w :w<CR>

" Git Add
nnoremap ,ga :Gwrite<CR>

" Git Status
nnoremap ,gs :Gstatus<CR>

" Git Commit
nnoremap ,gc :Gcommit<CR>

" Git Push
nnoremap ,gp :Gpush<CR>

" Open NERDTree
nnoremap ,ne :NERDTreeToggle<CR>
" GoTo bookmark (keep typing)
nnoremap ,bo :NERDTreeFocus<CR>/--Bo<CR>/\c
" Set NERDTree DocRoot
nnoremap ,nd :Bookmark DocRoot<CR>

" GoTo Next {VARFIELD}
nnoremap ,[ /{[A-Z]*}<CR>

" GoTo Next filepath
nnoremap ,ff /\(\/[A-Za-z_.]*\)\+<CR>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap ,k :s/\[ ]/[x]/<CR>
nnoremap ,K :s/\[x]/[ ]/<CR>

" Phinx Shortcut
nnoremap ,phinx :!cd $APPLICATION_DIR && phinx --configuration=conf_files/application/phinx.php 

" Install composer.yml
nnoremap ,compose :w<CR>:lcd %:p:h<CR>:!composer update<CR>

" Change Modified Phinx File to up/down methods
nnoremap ,phm /n cwciwupkd%4yy3jap2wciwdownkkki        

" Generate ctags in background
nnoremap ,ct :! cd $APPLICATION_DIR/ && ctags -R &>/dev/null &<CR>

" Run PHPUnit Tests
nnoremap ,test :! cd $TEST_DIR && phpunit --bootstrap=bootstrap.php --no-coverage % > /tmp/tests<CR>:vs /tmp/tests<CR>LmT
nnoremap ,ret lzx,test

" Tab Navigation
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

" Set up Marks for resolving conflicts
nnoremap ,mark /<<<<mq/====ma/>>>>mz
nnoremap ,delm 'qd'z

" GoTo next index that does not have quotes
nnoremap ,woq /\[[A-Za-z][A-Za-z0-9_]\+\]<CR>l

" Insert Author Tag
nnoremap ,aub iAubrey Lavigne

" Break this line at column 80, 120
nnoremap ,80 80\|T i 
nnoremap ,120 120\|T i 

" Post the currently yanked word, and prepend to word
nnoremap ,pb viS"_c  PBi

" Swap two elements in a tuple (any brace)
" Undefined behavior if not a tuple
" [abc, def] => [def, abc]
nnoremap ,sw yijdt,/[])}]i, p?[[({]ldw

" Insert a blank line above/below without insert mode
nnoremap ,o ok
nnoremap ,O Oj

" `x` should not copy to register
nnoremap x "_x

" Load a Snippet
nnoremap ,snip :tabnew ~/.vim/snips/

" Load Error File into a buffer
nnoremap ,errl :tabnew<CR>:-1read !tail -n 100 /var/log/php/errors.log<CR>

"---------------------
" Templates Snippets "
"---------------------

"" PHP General
nnoremap <Leader>nf :-1read ~/.vim/snips/php/newFile<CR>:5<CR>
nnoremap <Leader>err :-1read ~/.vim/snips/php/displayErrors<CR>jf 
nnoremap <Leader>debug :-1read ~/.vim/snips/php/vardump<CR>
nnoremap <Leader>pre :-1read ~/.vim/snips/php/pre<CR>o

"" Slim New Route
nnoremap <Leader>tsnr :-1read ~/.vim/snips/slim/newRoute<CR>0f{
nnoremap <Leader>tsrc :-1read ~/.vim/snips/slim/newRouteClass<CR>gg

"" New Paris Model
nnoremap <Leader>tpnm :-1read ~/.vim/snips/paris/newModel<CR>gg
nnoremap <Leader>pm :-1read ~/.vim/snips/paris/newModel<CR>,[

"" Idiorm 
nnoremap <Leader>ormLast :-1read ~/.vim/snips/idiorm/debugLastStatement<CR>k

"" PHPUnit Testing
nnoremap <Leader>puc :-1read ~/.vim/snips/phpunit/newClass<CR>2jfF
nnoremap <Leader>putm :-1read ~/.vim/snips/phpunit/newMethod<CR>3jfT
nnoremap <Leader>pum :-1read ~/.vim/snips/phpunit/newMock<CR>3jfT

"" Phinx
nnoremap <Leader>table :-1read ~/.vim/snips/phinx/getTable<CR>f{w

"" Twig
nnoremap <Leader>tw :-1read ~/.vim/snips/twig/render<CR>

"" HTML
nnoremap <Leader>html :-1read ~/.vim/snips/html/newFile<CR>

