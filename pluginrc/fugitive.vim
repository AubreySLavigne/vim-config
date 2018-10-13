
" Install Plugin
Plugin 'tpope/vim-fugitive'

" Mappings

" Git Add
nnoremap ,ga :Gwrite<CR>

" Git Status
nnoremap ,gs :Gstatus<CR>

" Git Commit
nnoremap ,gc :Gcommit<CR>

" Git Push
nnoremap ,gp :Gpush<CR>

" Close Preview Window (after `\hp`)
nnoremap ]x :pclose<CR>

" Set up Marks for resolving conflicts
nnoremap ,mark /<<<<mq/====ma/>>>>mz
nnoremap ,delm 'qd'z

