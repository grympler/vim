# Goal

Main purpose of this configuration is to improve confort for python and
C-family language coding.
It also provide support for git integration.

Feel free to change whatever you want !

# Installation

* Install configuration

```sh
$ mv ~/.vim ~/vim_old

$ git clone git@github.com:grympler/vim.git .vim

```

* Symlink vimrc

```sh
$ cd .vim

$ ./install.sh
```

* Check that you installed requirement

* Then lauch vim and don't pay attention to warning or error message.
Type `:PlugInstall`, then wait for completion.


# Requirement

* git

* make

* gcc

* ctags (for the ctags module)

* python-devel

* libclang (>3.3)

* cmake

* pyflakes (for the pyflakes module)

* ag/ack (for fulltext/pattern finding)

You also can add as many linter as you want to use with syntastic. You
can use linter for other language than python.

* ex : pylint (python)


# Plugin & Doc

BufExplorer [https://github.com/vim-scripts/bufexplorer.zip.git]
**Explore buffer**

delmitmate [https://github.com/Raimondi/delimitMate]
**This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.**

nerdcommenter [https://github.com/scrooloose/nerdcommenter]
**Simply comment or uncomment no matter the language**

nerdtree [https://github.com/vim-scripts/The-NERD-tree.git]
**Tree directory browsing**

pydoc [https://github.com/fs111/pydoc.vim.git]
**Python documentation**

snipmate [https://github.com/msanders/snipmate.vim]
**Code snippet management**

solarized [https://github.com/altercation/vim-colors-solarized]
**Color scheme**

tagbar [https://github.com/majutsushi/tagbar]
**File class/method layout**

cssimprove [https://github.com/vim-scripts/Better-CSS-Syntax-for-Vim]

fugitive [https://github.com/tpope/vim-fugitive.git]
**Git integration**

markdown [https://github.com/plasticboy/vim-markdown.git]

javascript [https://github.com/pangloss/vim-javascript]

indentation [https://github.com/nathanaelkane/vim-indent-guides.git]
**Display indentation**

javascript-syntax [https://github.com/jelera/vim-javascript-syntax.git]

vim-better-whitespace [https://github.com/ntpeters/vim-better-whitespace.git]
**No more trailing whitespace**

vim-airline [https://github.com/bling/vim-airline.git]
**Super usefull airline!**

vim-gitgutter [https://github.com/airblade/vim-gitgutter.git]
**Git info in gutter**

vim-csv [https://github.com/chrisbra/csv.vim.git]

neomake [https://github.com/neomake/neomake]
**Asynchronous linting**

ctrlp [https://github.com/kien/ctrlp.vim.git]
**Pattern file finding**

molokai color scheme [https://github.com/tomasr/molokai.git]
**Color scheme**

YCM [https://github.com/Valloric/YouCompleteMe.git]
**King of autocompletion**

Multiple Cursor [https://github.com/terryma/vim-multiple-cursors.git]
**Multiple cursor edition**

ag [https://github.com/rking/ag.vim]
**FullText Search**

stylus[https://github.com/wavded/vim-stylus.git]
**Syntax highlight html css**

ultisnips[SirVer/ultisnips]
**snippet engine (require python)**

vim-snippets[honza/vim-snippets]
**snippets repo**

# About the conf

* mapping.vim => Contain keyboard mapping

* filetype.vim => Contain filetype settings

* langdep.vim => Add some language dependecies management

* plugin.vim => Plugin settings
