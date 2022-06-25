
" Install Plugin
Plugin 'scrooloose/nerdtree'

" Config
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeShowBookmarks=1

" Mappings

"" Open NERDTree
nnoremap ,ne :NERDTreeToggle<CR>

"" GoTo bookmark (keep typing)
nnoremap ,bo :NERDTreeFocus<CR>/--Bo<CR>/\c

"" Set NERDTree DocRoot
nnoremap ,nd :Bookmark DocRoot<CR>
