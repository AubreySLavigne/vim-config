
## Tips:
 * Never do in two keystrokes what you can do in 1. (Intolerance of Typing)
 * Build fail safes for common typos (Intolerance of Typos)
 * Commands should focus on repeatability 

## At the command line:
 * `vim +PluginInstall +qall` == Install Vundle Plugins

## Useful Commands: 
 * `^^` == Go to the previously opened file
 * `^e` and `^y` == Scroll the window down and up
 * `:%s//New String/` == Run replace on the last search

 * `"*dd` == Cut Command into Clipboard Register
 * `"*p` == Paste Command into Clipboard Register
 * `gi` == resume inserting where you were last editing
 * `^r^rs` == insert the content of the 's' register
 * `^r0` (zero) == reload current file -- good for reloading vimrc changes
 * `H`, `M`, `L` == Move cursor to Top, Mid, Bottom of current display
 * `:earlier 2m` ==  Go back two minutes (mind blown)
 * `c^w_` == set size of horizontal split

## Folding:
 * `zF` == create fold
 * `zc` == close current fold
 * `zd` == delete fold at the cursor
 * `:{range}fo` == create fold for range

## Text Objects:
 * (None Currently)

## Fzf
 * `<Leader>b`

## surround.vim:
 * `cs'<body>` == change surrounding ' to <body></body>

## vim-commentary
 * `gc<direction>` == Comment that line with appropriate comment type
 * `gcc` == Comment Current Line
 * `gcap` == Comment Current paragraph text object

## vim-indent-object:
 * (None Currently)

## argtextobj.vim
 * (None Currently)

## NERDTree
 * `I` (in NERDTree) == Display hidden files
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
 * `ic` and `ac` == Text Objects for selected Change

## Mappings

### Load Files
 * `,ne` == Open NERDTree
 * `,bo` == Navigate to NERDTree and start searching for bookmark
 * `,nd` == Set NERDTree DocRoot bookmark
 * `,snip` == Prompt for Snippet
 * `,errl` == Load PHP Error Log (last 100 lines)

### Exit/Save Files
 * `,pc` == Close Preview Window

### Git Bindings
 * `,gs` == git status
 * `,gp` == git push

### External Programs
 * (None Currently)

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

### Interesting Plugins
 * Look into other vim-repeat projects:
   * speeddating.vim
   * abolish.vim
   * unimpaired.vim
   * commentary.vim
   * vim-easyclip
 * vim-multiple-cursors
 * vim-eunich
 * fzf
 * Editor Config

### Recommended Reading
 * Read "Learning Vimscript the Hard Way"
 * Dive Into [Vim Help: Motion](http://vimdoc.sourceforge.net/htmldoc/motion.html)
 * Watch videos on cvimcasts.org

### PHP Workflow (low priority)
 * PHP Tools
   * Codesniffer
   * Mess detector
   * PHP Documentor (https://github.com/tobyS/pdv)
 * Look into https://github.com/adoy/vim-php-refactoring-toolbox (PHP Plugin)

### To Do
 * Learn fzf
 * Improve my library of snippets
 * Integration of language servers (such as pyls) with YouCompleteMe
 * Shortcut for ALEGoToDefinition
 * Figure out how to use Vim's Autocompletion
   * `^x` == search
 * Set different text color after column 80

### For Inspiration
 * Anything in [here](https://github.com/kana/vim-textobj-user/wiki) worthwhile?
 * Look into [PHP Plugins](https://www.reddit.com/r/PHP/comments/23okor/vim_users_who_code_in_php_what_plugins_do_you_have/)


