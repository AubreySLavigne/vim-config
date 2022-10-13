
# Vim Cheat Sheet

## Tips

| Principle                 | Description                                     |
|---------------------------|-------------------------------------------------|
| Intolerance of Typing     | Never do in two keystrokes what you can do in 1 |
| Intolerance of Typos      | Build fail safes for common typos               |
| Intolerance of Repetition | Build commands that can be reproduced easily    |

## At the command line

| Command                    | Description            |
|----------------------------|------------------------|
| `vim +PluginInstall +qall` | Install Vundle Plugins |

## Built into VIM

### Useful Commands

Reminder: `^x` is shorthand for `ctrl-x`

| Command       | Description                                                               |
|---------------|---------------------------------------------------------------------------|
| `^e` and `^y` | Scroll the window down and up                                             |
| `g^a`         | Visual mode - Create an Incrementing list of numbers (0\n0\n0 to 1\n2\n3) |
| `"*dd`        | Cut Command into Clipboard Register                                       |
| `"*p`         | Paste Command into Clipboard Register                                     |
| `^r^rs`       | insert the content of the 's' register                                    |
| `^r0` (zero)  | reload current file -- good for reloading vimrc changes                   |
| `c^w_`        | set size of horizontal split                                              |
| `^w+`, `^w-`  | Resize horizontal split                                                   |

### Folding

#### Open/Close Folds

My configs use `<Space>` for toggling folds at the cursor

| Command | Description                    |
|---------|--------------------------------|
| `zo`    | opens a fold at the cursor     |
| `zO`    | opens all folds at the cursor  |
| `zm`    | increases the foldlevel by one |
| `zM`    | closes all open folds          |
| `zr`    | decreases the foldlevel by one |

#### Navigating between Folding

| Command | Description                           |
|---------|---------------------------------------|
| `zj`    | moves the cursor to the next fold     |
| `zk`    | moves the cursor to the previous fold |
| `[z`    | move to start of open fold            |
| `]z`    | move to end of open fold              |

#### Create/Delete Folds

| Command     | Description                                 |
|-------------|---------------------------------------------|
| `zf#j`      | creates a fold from the cursor down # lines |
| `zf/string` | creates a fold from the cursor to string    |
| `zd`        | deletes the fold at the cursor              |
| `zE`        | deletes all folds                           |

### Disable Indenting

```bash
:setlocal noautoindent
:setlocal nocindent
:setlocal nosmartindent
:setlocal indentexpr=
```

TODO: Create a mapping for the above

### Sessions

* `:mksession <filename>.vim`
* Reopen the file with `vim -S <filename.vim>`

### Spellchecking

* `:set spell`
* `:set spelllang=en_us`
* Can have multiple dictionaries per language

## Plugins

### Fzf

* `<Leader>b`

## NERDTree

These commands are run while in the NERDTree buffer

| Command | Description                                        |
|---------|----------------------------------------------------|
| `I`     | Display hidden files                               |
| `o`     | Opens selected dir/file                            |
| `cd`    | Current Directory is the NEW pwd                   |
| `CD`    | Changes the current directory to Current Directory |
| `r`     | Refresh Current Dir                                |
| `t`     | Open selected file in new tab                      |

## NERDTree Tabs

| Command              | Description                        |
|----------------------|------------------------------------|
| `:NERDTreeTabsOpen`  | Switches NERDTree on for all tabs  |
| `:NERDTreeTabsClose` | Switches NERDTree off for all tabs |

## vim-fugitive

| Command       | Description                  |
|---------------|------------------------------|
| `:Git status` | `git status`                 |
| `:Git log`    | `git log` for file in buffer |

## vim-textobj-space

| Command | Description      |
|---------|------------------|
| `iS`    | any mixed spaces |

## vim-gitgutter

| Command       | Description                      |
|---------------|----------------------------------|
| `ic` and `ac` | Text Objects for selected Change |

## Mappings

### Load Files

| Command | Description                                           |
|---------|-------------------------------------------------------|
| `,bo`   | Navigate to NERDTree and start searching for bookmark |
| `,nd`   | Set NERDTree DocRoot bookmark                         |

### Git Bindings

| Command | Description |
|---------|-------------|
| `,gp`   | git push    |

### Page Navigation

| Command | Description                                        |
|---------|----------------------------------------------------|
| `,mark` | Set up Marks for Merging Conflicts                 |
| `,delm` | Delete marks as set in `,mark`                     |
| `,woq`  | Go to next index without quotes ('WithOut Quotes') |
| `,[`    | Go to next {PLACEHOLDER}                           |
| `,ff`   | Go to next linux-style filepath                    |

### Misc Text Manipulations

| Command       | Description                            |
|---------------|----------------------------------------|
| `,aub`        | Insert my name                         |
| `,120`        | Take the current line and break at 120 |
| `,pb`         | Paste and Insert to prepend            |
| `,sw`         | Swap two items in a tuple              |
| `,o` and `,O` | Add a blank line above/below           |
| `,k` and `,K` | Toggle Checkbox ([ ]) in Markdown file |

## Notes and Wishlist

### Interesting Plugins

* Look into other vim-repeat projects:
   1. speeddating.vim
   1. abolish.vim
   1. unimpaired.vim
   1. commentary.vim
   1. vim-easyclip
* vim-multiple-cursors
* vim-eunich
* fzf
* Editor Config

### Recommended Reading

* Read "Learning Vimscript the Hard Way"
* Dive Into [Vim Help: Motion](http://vimdoc.sourceforge.net/htmldoc/motion.html)
* Watch videos on cvimcasts.org

### To Do

* Learn fzf
* Improve my library of snippets
* Integration of language servers (such as pyls) with YouCompleteMe
* Shortcut for ALEGoToDefinition
* Figure out how to use Vim's Autocompletion
   1. `^x` == search
* Set different text color after column 80

### For Inspiration

* Anything in [here](https://github.com/kana/vim-textobj-user/wiki) worthwhile?
* Look into [PHP Plugins](https://www.reddit.com/r/PHP/comments/23okor/vim_users_who_code_in_php_what_plugins_do_you_have/)

