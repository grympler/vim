"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

endif

" Disable lsp support for ALE (Let YCM be the default LSP tool)
let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')

" deoplete only used for .wiki files and markdown/prose now
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" YCM as default autocompletion/LSP tool
Plug 'ycm-core/YouCompleteMe', {'do' : './install.sh'}
Plug 'vim-scripts/bufexplorer.zip'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/The-NERD-tree', {'on': 'NERDTreeToggle'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi',
Plug 'wavded/vim-stylus'
Plug 'vim-scripts/LargeFile'
Plug 'ludovicchabant/vim-gutentags'
"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
"" Themes
Plug 'w0ng/vim-hybrid'
Plug 'joshdick/onedark.vim'

" Language specific
"" Python
Plug 'hynek/vim-python-pep8-indent'
Plug 'tweekmonster/django-plus.vim'

" Other Format
"" global
Plug 'sheerun/vim-polyglot'
"" CSS
Plug 'vim-scripts/Better-CSS-Syntax-for-Vim'
"" Salt
Plug 'mariodpros/salt-vim'

"" Custom wiki plugin
Plug '~/.vim/plugged/vim-zettel'

call plug#end()


filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set swap file directory
set directory^=$HOME/.vim/swap//
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
    set nobackup	" do not keep a backup file, use versions instead
else
    set backup		" keep a backup file
endif

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
"set guifont=Monospace\ 10
set guifont=DejaVu\ Sans:s12
set background=dark

colorscheme onedark
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

" Press F2 to toggle paste mode. Add visual feedback.
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

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
source ~/.vim/plugin.vim
source ~/.vim/mappings.vim
source ~/.vim/langdep.vim
