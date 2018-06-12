
## Tips:
 * Never do in two keystrokes what you can do in 1. (Intolerance of Typing)
 * Build fail safes for common typos (Intolerance of Typos)
 * Commands should focus on repeatability 

## Useful Commands: 
 * `:v/keep-me/d` == Delete all lines that do not have 'keep-me'
 * `^^` == Go to the previously opened file
 * `^e` and `^y` == Scroll the window down and up
 * `:%s//New String/` == Run replace on the last search

 * `"*dd` == Cut Command into Clipboard Register
 * `"*p` == Paste Command into Clipboard Register
 * `gi` == resume inserting where you were last editing
 * `^r^rs` == insert the content of the 's' register
 * `^r0` (zero) == reload current file -- good for reloading vimrc changes
 * `H`, `K`, `L` == Move cursor to Top, Mid, Bottom of current display
 * `:earlier 2m` ==  Go back two minutes (mind blown)
 * `c^w_` == set size of horizontal split

## Tabs:
 * `:0tabnew` == opens new tab in first slot
 * `:$tabnew` == opens new tab in last slot
 * `:tabclose` == closes current tab`
 * `:+tabmove` == move tab to the right
 * `:-tabmove` == move tab to the last

## Folding:
 * `zF` == create fold
 * `zc` == close current fold
 * `zd` == delete fold at the cursor
 * `:{range}fo` == create fold for range

## Text Objects:
 * (None Currently)

## surround.vim:
 * `cs'<body>` == change surrounding ' to <body></body>

## vim-commentary
 * `gc<direction>` == Comment that line with appropriate comment type
 * `gcc` == Comment Current Line
 * `gcap` == Comment Current paragraph text object

## vim-indent-object:
 * `ai` == indent level, plus line above
 * `ii` == indent level only
 * `aI` == indent level, plus line above and below
 * `iI` == indent level only (same as `ii`)

## argtextobj.vim
 * `aa` == argument including comma
 * `ia` == argument only

## NERDTree
 * `o` (in NERDTree) == Opens selected dir/file
 * `cd` (in NERDTree) == Current Directory is the NEW pwd
 * `CD` (in NERDTree) == Changes the current directory to Current Directory
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

## vim-gitgutter
 * `]c` and `]c` == Jump to next and previous git changes
 * `<Leader>hu` == Undo selected change
 * `<Leader>hs` == Stage selected change
 * `<Leader>hp` == Preview selected change
 * `ic` and `ac` == Text Objects for selected Change

## Mappings

### Load Files
 * `,ne` == Open NERDTree
 * `,bo` == Navigate to NERDTree and start searching for bookmark
 * `,nd` == Set NERDTree DocRoot bookmark
 * `,snip` == Prompt for Snippet
 * `,errl` == Load PHP Error Log (last 100 lines)

### Exit/Save Files
 * `zz` == ([NV]-mode) Save and exit file
 * `zx` == ([NV]-mode) Exit File Without Saving
 * `za` == ([NV]-mode) Exit All Files Without Saving
 * `,w` == Save Current File
 * `,pc` == Close Preview Window

### Git Bindings
 * `,ga` == git add 
 * `,gs` == git status
 * `,gc` == git commit
 * `,gp` == git push

### External Programs
 * `,phinx` == Load Incomplete Phinx Command
 * `,phm` == Change New Phinx file
 * `,compose` == Install composer 

### Page Navigation
 * `,mark` == Set up Marks for Merging Conflicts
 * `,delm` == Delete marks as set in `,mark`
 * `,woq` == Go to next index without quotes ('WithOut Quotes')
 * `,[` == Go to next {PLACEHOLDER}
 * `,ff` == Go to next linux-style filepath

### Misc Text Manipulations
 * `,aub` == Insert my name
 * `,80` and `,120` == Take the current line and break at 80/120
 * `,pb` == Paste and Insert to prepend
 * `,sw` == Swap two items in a tuple
 * `,o` and `,O` == Add a blank line above/below
 * `,k` and `,K` == Toggle Checkbox ([ ]) in Markdown file

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
 * HTML Validator
 * goto keyword definition
 * fuzzy file search
 * Snippets
 * Set different text color after column 80
 * Dive Into [Vim Help: Motion](http://vimdoc.sourceforge.net/htmldoc/motion.html)
 * Anything in [here](https://github.com/kana/vim-textobj-user/wiki) worthwhile?
 * Plugin called Command-T? ctrlp?
 * Read "Learning Vimscript the Hard Way"
 * Watch videos on cvimcasts.org
 * Look into other vim-repeat projects:
   * speeddating.vim
   * abolish.vim
   * unimpaired.vim
   * commentary.vim
   * vim-easyclip
 * Look into https://github.com/adoy/vim-php-refactoring-toolbox (PHP Plugin)
 * Look into [PHP Plugins](https://www.reddit.com/r/PHP/comments/23okor/vim_users_who_code_in_php_what_plugins_do_you_have/)

