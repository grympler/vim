"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

endif

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', {'do' : './install.sh'}
Plug 'vim-scripts/bufexplorer.zip'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/The-NERD-tree', {'on': 'NERDTreeToggle'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'neomake/neomake'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
Plug 'wavded/vim-stylus'
Plug 'vim-scripts/LargeFile'
Plug 'sjl/gundo.vim'
"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
"" Themes
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

" Language specific
"" Python
Plug 'fs111/pydoc.vim'
Plug 'hynek/vim-python-pep8-indent'

" Other Format
"" Markdown
Plug 'plasticboy/vim-markdown'
"" CSV
Plug 'chrisbra/csv.vim'
"" CSS
Plug 'vim-scripts/Better-CSS-Syntax-for-Vim'
"" HTML5
Plug 'othree/html5.vim'
Plug 'Rykka/riv.vim'
"" Salt
Plug 'mariodpros/salt-vim'
"" ansible
Plug 'pearofducks/ansible-vim'

call plug#end()


filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
    set nobackup	" do not keep a backup file, use versions instead
else
    set backup		" keep a backup file
endif

set showcmd		" display incomplete commands
set scrolloff=2
set wildmode=longest,list
set viminfo='1000,f1,:500,/500,<50,s10,h
set listchars+=tab:I.,trail:_
set nowrap
set wildignore=*.o,*.obj,*.bak,*.exe,*~
set lz			" do not redraw while running macros (much faster) (LazyRedraw)
set hid			" you can change buffer without saving
set autoread		" update file without asking

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" APPEARANCE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &t_Co > 2 || has("gui_running")
    "" Comment or Uncomment this line according to your terminal configuration
    "" (256 colors or not)
    set t_Co=256
    syntax on
    set hlsearch
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set number
set cursorline
"popup max height
set pumheight=15

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font & Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Monospace\ 10
set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized

"colorscheme molokai
colorscheme hybrid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ENCODING & FILETYPE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencoding=utf8
set encoding=utf8
syntax on
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENTATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORMATING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set textwidth=80
highlight col79 ctermbg=Red guibg=Red

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set nowrapscan
set incsearch		" do incremental searching

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OTHER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/filetype.vim
source ~/.vim/langdep.vim
source ~/.vim/plugin.vim
" Disable for now, update soon
"source ~/.vim/header.vim
source ~/.vim/mappings.vim
