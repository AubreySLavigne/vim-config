" Install Plugin
Plugin 'tpope/vim-fugitive'

" Mappings

" Git Add
nnoremap ,ga :Gwrite<CR>

" Git Status
nnoremap ,gs :Git<CR>

" Git Commit
nnoremap ,gc :Git commit<CR>

" Git Push
nnoremap ,gp :Git push<CR>

" Set up Marks for resolving conflicts
nnoremap ,mark /<<<<mq/====ma/>>>>mz
nnoremap ,delm 'qd'z
