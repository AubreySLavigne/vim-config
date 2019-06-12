
" Install Plugin
Plugin 'w0rp/ale'


" Configuration

"" Basics
let g:ale_enabled = 1
let g:ale_completion_enabled = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_fix_on_text_changed = 'never'
let g:ale_fix_on_enter = 0
let g:ale_fix_on_save = 1

let g:ale_echo_msg_format = '[%linter%] %severity% [%code%] %s'


"" Enable Linters/Fixers
let g:ale_linters = {
            \ 'bash' : ['shellcheck'],
            \ 'dockerfile' : ['hadolint'],
            \ 'go' : ['gofmt', 'go build', 'golint', 'go vet', 'golangserver'],
            \ 'php' : ['php', 'phpcs'],
            \ 'python' : ['pylint', 'pyls'],
            \ 'terraform' : ['tflint'],
            \ 'vim' : ['vint'],
            \ }
let g:ale_fixers = {
            \ 'go' : ['gofmt', 'goimports'],
            \ 'python' : ['isort'],
            \ }


"" Python Specific
let g:ale_python_pylint_options = '--rcfile ' + $HOME + '.pylintrc' + "--init-hook='import sys; sys.path.append(\".\"); sys.path.append(\"+ $PYTHONPATH +\")'"
let g:ale_python_pylint_executable = 'pylint3'
