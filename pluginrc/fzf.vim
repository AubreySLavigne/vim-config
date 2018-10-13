
" Install Plugin
"" Only install if fzf is installed and configured locally
if isdirectory($HOME . '/.fzf')
    set runtimepath+=~/.fzf
    Plugin 'junegunn/fzf.vim'
endif

" Mappings

"" Open file search
nnoremap <Leader>f :Files<CR>

