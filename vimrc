
" AubreySLavigne vimrc

" Settings {{{1
" Encoding/Whitespace Options {{{2

" Encoding {{{3
set encoding=utf-8
scriptencoding utf-8

" Configure Tabs {{{3
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4

augroup yaml_style
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

" Don't modify newline at end of file
silent! set nofixeol
set nofixendofline
set noendofline

" Highlighting {{{2
filetype plugin indent on
syntax on
set hlsearch
set incsearch
set foldmethod=indent
set foldminlines=4
setlocal foldmethod=marker      " This file only
setlocal foldminlines=2      " This file only

" Custom Filetypes {{{2

" Set filetype for Non-Standard Dockefiles (e.g. Dockerfile.bak,
" Dockerfile-testing) {{{3
augroup dockerfile_ext
    autocmd BufNewFile,BufRead Dockerfile* set filetype=dockerfile
    autocmd BufNewFile,BufRead *-Dockerfile set filetype=dockerfile
augroup END

" Set filetype for template extensions
" Dockerfile-testing) {{{3
augroup yamlext
    autocmd BufNewFile,BufRead *.yml.tpl set filetype=yaml
    autocmd BufNewFile,BufRead *.yaml.tpl set filetype=yaml
augroup END
augroup hclext
    autocmd BufNewFile,BufRead *.hcl.tpl set filetype=hcl
augroup END

" Numbering {{{2
set number

" Status Line Comments {{{2
set showcmd
set ruler

" Don't create swp files {{{2
set nobackup
set nowritebackup
set noswapfile

" Color Settings {{{2
set t_Co=256

colorscheme desert

highlight Search ctermbg=018
highlight ALEWarning ctermbg=053
highlight clear SignColumn

" Shell Configuration {{{2
if executable('zsh')
    set shell=zsh
else
    set shell=bash
endif

" ctags Config{{{2
:set tags=~/.vim/tags

" Insert Mode Config {{{2
set backspace=indent,eol,start

" }}}1

" Plugin Config {{{1
" Load Vundle {{{2

" Vundle requires the following
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins {{{3
Plugin 'VundleVim/Vundle.vim'

" Linting and Signs in margin
source ~/.vim/pluginrc/ale.vim
Plugin 'kshenoy/vim-signature'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'tpope/vim-surround'

" Better Comments
Plugin 'tpope/vim-commentary'

" Git Integrations
source ~/.vim/pluginrc/fugitive.vim
Plugin 'airblade/vim-gitgutter'

" Snippets
source ~/.vim/pluginrc/ultisnips.vim

" File/Buffer Navigation
source ~/.vim/pluginrc/nerdtree.vim
source ~/.vim/pluginrc/fzf.vim

" Expand Repeat functionality (.)
Plugin 'tpope/vim-repeat'

" Fix Indenting
Plugin 'sickill/vim-pasta'
Plugin 'Vimjas/vim-python-pep8-indent'

" Documentation
Plugin 'fs111/pydoc.vim'
source ~/.vim/pluginrc/vimwiki.vim

" Support for Terraform
Plugin 'hashivim/vim-terraform'

" Restore settings for vundle
call vundle#end()  
filetype plugin indent on

" }}}3

" vim-closetag config {{{2
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.php'

" vim-commentary {{{2

" Add Terraform file support
augroup tf_style
    autocmd FileType tf setlocal commentstring=#\ %s
augroup END

" Google Go {{{2
" Use goimports, rather than go-fmt
let g:go_fmt_command = 'goimports'

" }}}1

" Mappings {{{1
" Vim Config files {{{2
nnoremap ,ch :vs ~/.vim/cheats.md<CR>
nnoremap ,rc :vs ~/.vim/vimrc<CR>

" Vim: Bindings for Defaults {{{2

" Fast File Save {{{3
" Also Closes Preview Window
nnoremap ,w :w<CR>:pc<CR>

" Folding Shortcuts {{{3
" Toggle Current Fold
nnoremap <space> za  

" Show buffers list {{{3
nnoremap <Leader>b :buffers<CR>

" }}}2
" Vim: Improvments to Defaults {{{2
" Insert a Blank Line Above/Below Without Insert Mode {{{3
nnoremap ,o ok
nnoremap ,O Oj

" Change Default Behaviors {{{3
" Change to use Blackhole registers
nnoremap x "_x
nnoremap X "_X

" Close Preview Window {{{3
noremap ,pc :pc<CR>

" }}}2
" Vim: Complex Actions {{{2

" Break this line at column 80, 120 {{{3
nnoremap ,80 80\|Bik:s/\s*$//g<CR>j:noh<CR>
nnoremap ,120 120\|T i k:s/\s*$//g<CR>j:noh<CR>

" Search current file {{{3
" GoTo Next filepath
nnoremap ,ff /\(\/[A-Za-z_.]*\)\+<CR>

" Load Error File into a buffer {{{3
nnoremap ,err :tabnew<CR>:-1read !tail -n 100 /var/log/php/errors.log<CR>

" Load Templates {{{3
nnoremap ,nu :set invnu<CR>

" }}}2
" Plugins {{{2

" ctags {{{3

" Run ctags in background
nnoremap ,ct :! cd $APPLICATION_DIR/ && ctags -R &>/dev/null &<CR>

" }}}2

" External Programs {{{2
" jq {{{3

vnoremap <leader>jq :'<,'>! jq .<CR>

" Python {{{3

nnoremap !py :terminal<CR>python3<CR>

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

