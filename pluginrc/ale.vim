
" Install Plugin
Plugin 'w0rp/ale'


" Configuration

"" Basics
let g:ale_enabled = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_fix_on_text_changed = 'never'
let g:ale_fix_on_enter = 0
let g:ale_fix_on_save = 1

let g:ale_echo_msg_format = '[%linter%] %severity% [%code%] %s'


"" Enable Linters/Fixers
let g:ale_linters = {
            \ 'bash':       ['shellcheck'],
            \ 'dockerfile': ['hadolint'],
            \ 'go':         ['gofmt', 'go build', 'golint', 'go vet', 'gopls'],
            \ 'javascript': ['eslint'],
            \ 'php':        ['php', 'phpcs'],
            \ 'python':     ['pylint', 'pyls', 'mypy'],
            \ 'terraform':  ['terraform_lsp'],
            \ 'vim':        ['vint'],
            \ }
let g:ale_fixers = {
            \ 'go':         ['gofmt', 'goimports'],
            \ 'json':       ['jq'],
            \ 'python':     ['isort'],
            \ 'terraform':  ['terraform'],
            \ }


"" Python Specific
let g:ale_python_pylint_options = '--rcfile ' + $HOME + '.pylintrc' + "--init-hook='import sys; sys.path.append(\".\"); sys.path.append(\"+ $PYTHONPATH +\")'"
if executable('pylint3')
    let g:ale_python_pylint_executable = 'pylint3'
else
    let g:ale_python_pylint_executable = 'pylint'
endif

"" Go Specific
let g:ale_go_go111module = 'on'

"" Dockerfile Specific
" let g:ale_dockerfile_hadolint_options = '--format tty'
let g:ale_dockerfile_hadolint_options = ''
