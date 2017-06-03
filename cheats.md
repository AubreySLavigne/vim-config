
## Useful Commands: 
 * `gi` == resume inserting where you were last editing
 * `g;` == return to last editing location (cycle through)
 * `^r^rs` == insert the content of the 's' register
 * `^r0` (zero) == reload current file -- good for reloading vimrc changes
 * `gf` == go to file under cursor
 * `^o` == return to the previous file/cursor location
 * `J` and `K` == (V-mode) Move Selected Block Up and Down
 * `:r ! ls` == Load the output of `ls` (after the bang) into a buffer

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
 * `r` (in NERDTree) == Refresh Current Dir
 * `t` (in NERDTree) == Open selected file in new tab

## NERDTree Tabs
 * `:NERDTreeTabsOpen` == Switchs NERDTree on for all tabs
 * `:NERDTreeTabsClose` == Switchs NERDTree off for all tabs

## vim-fugitive
 * `:Gstatus` == `git status` 
 * `:Glog` == `git log` for file in buffer

## vim-textobj-space
 * `iS` == any mixed spaces

## Macros:
 `:2,10norm @p` == Run Macro over a range 
 * `@a` == Insert Author Signature: Aubrey Lavigne
 * `@j` == Break the currently line at column 80 (without breaking words)
 * `@r` == Paste currently yanked text and prepend
 * `@s` == Swap two elements in braces
 * `@t` == Convert Old Style Array to new Style

## Mappings

### Load Files
 * `,ch` == Load up Cheat List 
 * `,rc` == Load up vimrc
 * `,ne` == Open NERDTree

### Exit/Save Files
 * `zz` == ([NV]-mode) Save and exit file
 * `zx` == ([NV]-mode) Exit File Without Saving
 * `za` == ([NV]-mode) Exit All Files Without Saving
 * `,w` == Save Current File
 * `,ga` == git add the current file, then exit

### External Programs
 * `,phinx` == Load Incomplete Phinx Command
 * `,phm` == Change New Phinx file
 * `,compose` == Install composer 

### Page Navigation
 * `,tn` == Go To Next Tab
 * `,tp` == Go To Prev Tab
 * `,t<` == Go To First Tab
 * `,t>` == Go To Last Tab

### Misc Text Manipulations
 * `,aub` == Insert my name
 * `,80` and `,120` == Take the current line and break at 80/120
 * `,pb` == Paste and Insert to prepend
 * `,sw` == Swap two items in a tuple

## Notes and Wishlist: 
 * Find Better Alternatives to ctags
 * Figure out how to use Vim's Autocompletion   
 *  `^x` == search
 *  `^n` == autocomplete
 * Run commands through Vim
 * PHP Tools
   * Codesniffer
   * Mess detector
   * PHP Documentor (https://github.com/tobyS/pdv)
 * goto keyword definition
 * fuzzy file search
 * Snippets
 * Set different text color after column 80
 * Dive Into [Vim Help: Motion](http://vimdoc.sourceforge.net/htmldoc/motion.html)
 * Anything in [here](https://github.com/kana/vim-textobj-user/wiki) worthwhile?
 * Plugin called Command-T?
 * Read "Learning Vimscript the Hard Way"
 * Watch videos on cvimcasts.org

## Tips:
 * Never do in two keystrokes what you can do in 1. (Intolerance of Typing)
 * Build fail safes for common typos (Intolerance of Typos)
 * Make Macros reusable

