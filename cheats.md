
## Useful Commands: 
 * `*` == Search for Current Word
 * `gi` == resume inserting where you were last editing
 * `g;` == return to last editing location (cycle through)
 * `^r^rs` == insert the content of the 's' register
 * `^r0` (zero) == reload current file -- good for reloading vimrc changes
 * `gf` == go to file under cursor
 * `^o` == return to the previous file/cursor location

## Tabs:
 * `:tabnew` == opens new tab
 * `:0tabnew` == opens new tab in first slot
 * `:$tabnew` == opens new tab in last slot
 * `:tabclose` == closes current tab`
 * `:+tabmove` == move tab to the right
 * `:-tabmove` == move tab to the last
 * `:tabn` == go to next tab
 * `:tabp` == go to previous tab 

## Folding:
 * `zF` == create fold
 * `zd` == delete fold at the cursor
 * `:{range}fo` == create fold for range

## Text Objects:
 * `ip` == Act on 'inner paragraph'
 * `it` == Act on 'inner tag'
 * `iW` == word (delimeted by whitespace, not other word breaks)

## surround.vim:
 * `cs"'` == change surrounding " to '
 * `cs'<body>` == change surrounding ' to <body></body>
 * `cst'` == change surrouding tags to '
 * `ds'` == remove surrounding '
 * `yssb` == surround current line with braces

## vim-indent-object:
 * `ai` == indent level, plus line above
 * `ii` == indent level only
 * `aI` == indent level, plus line above and below
 * `iI` == indent level only (same as `ii`)

## argtextobj.vim
 * `aa` == argument including comma
 * `ia` == argument only

## NERDTree
 * `:NERDTree` == Open File Browser
 * `:Bookmark name` == create a bookmark called 'name'
 * `B` (in NERDTree Window) == Opens Bookmarks
 * `o` (in NERDTree) == Opens selected dir/file
 * `cd` (in NERDTree) == Change current directory to selected file

## Macros:
 * `@a` == Insert Author Signature: Aubrey Lavigne
 * `@s` == Swap two elements in braces

## Mappings
 * `,cheat` == Load up Cheat List in Vert Split
 * `zz` == ([INV]-mode) Save and exit file

## Notes and Wishlist: 
 * Install and Use `ctags`
 * Figure out how to use Vim's Autocompletion   
 *  `^x` == search
 *  `^n` == autocomplete
 * Handle Git Merges through Vim
 * Handle Git Actions through Vim
 * Run commands through Vim
 * Codesniffer
 * Mess detector
 * goto keyword definition
 * fuzzy file search
 * Snippets
 * Set different text color after column 80
 * Dive Into [Vim Help: Motion](http://vimdoc.sourceforge.net/htmldoc/motion.html)
 * Anything in [here](https://github.com/kana/vim-textobj-user/wiki) worthwhile?

