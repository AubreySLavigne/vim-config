
" Install Plugin
Plugin 'SirVer/ultisnips'

" Config
set runtimepath+=~/.ultisnips

let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<c-Z>'

let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.ultisnips/UltiSnips'

" Mappings

"" Open Ultisnips config for this filetype
nnoremap ,U :UltiSnipsEdit<CR>

