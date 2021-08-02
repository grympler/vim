# Global

* mapleader : ','

# Buffer

* open buffer list : <space> o

# Windows/tab navigation

*in visual mode*

* right : <space> l
* left : <space> h
* down : <space> j
* up : <space> k
* next tab ! <Ctrl><Shift> <arrow up>
* prev tab ! <Ctrl><Shift> <arrow down>

## Folding

*is visual mode*
* unfold all first level: <mapleader> zr
* unfold all levels: <mapleader> zR
* fold all: <mapleader> zM
* open all folds at cursor: <mapleader> zO

# Comment

*in visual mode*

* comment selected block : <mapleader> cc
* uncomment selected block : <mapleader> cu

# Ctags tagbar and documentation navigation

*For the two first command, you need to compile ctags for your project*

*in visual mode*

* go to name definition : <Ctrl><Alt> ']'
* go back : <Ctrl> 't'
* go to documentation (if available) of current tags under cursor : <maj> 'k'
* lauch tagbar : ':TG'

# Search file and buffer (ctrlp)

* search for file : <Ctrl> 'p'
* search in buffer or mru : ':CtrlPBuffer' or ':CtrlPMRU'
* search everywhere : ':CtrlPMixed'

# Insertion/Navigation

*in visual mode*

* from end of word to end of work : 'e'
* from start of word to start of work : 'w'
* Insertion to end of line : 'A'
* Insert line and start insertion mode : 'o'
* clear line and start insertion mode : 'cc'

# Search

*in visual mode*

* search for word under cursor : '*'
* shut down highligth : '**'

*FullText search using ag*

* :Ag pattern [options] dir

# Misc

* make json readable : <mapleader> j
* open syntax checking windows : <mapleader> f
* close syntax checking windows : <mapleader> ff
* activate/deactivate indentation showing : <mapleader> ig
* graphical undo: <F5>
