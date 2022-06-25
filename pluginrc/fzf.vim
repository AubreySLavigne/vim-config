" Install Plugin
"" Only install if fzf is installed and configured locally
let is_fzf_configured = 0

if isdirectory($HOME . '/.fzf')
    set runtimepath+=~/.fzf
    let is_fzf_configured = 1
endif

if filereadable($HOME . '/.fzf.zsh')
    set runtimepath+=~/.fzf.zsh
    let is_fzf_configured = 1
endif

if is_fzf_configured
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf'
endif

" Mappings

"" Open file search
nnoremap <Leader>f :Files<CR>
