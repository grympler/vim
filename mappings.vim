"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /!\ LEADER KEY /!\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap , <Nop>
let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer changing / cycling files through buffer
map <S-LEFT> <ESC>:bp<RETURN>
map <S-RIGHT> <ESC>:bn<RETURN>
map <SPACE>k <C-w><up>
map <SPACE>j <C-w><down>
map <SPACE>l <C-w><right>
map <SPACE>h <C-w><left>
" Tab moving
map :ee :tabe
map <SPACE>- :tabp<RETURN>
map <SPACE>= :tabn<RETURN>
" Resize buffers
map <C-right> <C-W><
map <C-left> <C-W>>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
map nt :NERDTree `pwd`<RETURN>
" BufExplorer
nmap <silent> <unique> <SPACE>o :BufExplorer<CR>
" Tagbar
nnoremap :TG :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzy fzf file search
nnoremap <silent> <C-P> :FZF<CR>
" Search what's highlighted in files with Ag
nnoremap <silent> <Leader>* :Ag<CR>
" Symbol search in workspace with YCM
nmap <Leader>p <Plug>(YCMFindSymbolInWorkspace)
" Symbol search in doc with YCM
" Keep in case it become handy, but not needed as basic config
" is ok
"nmap <something> <Plug>(YCMFindSymbolInDocument)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jumping, thx to gutentag; autogenrated ctags.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-]>
nnoremap <C-K> <C-T>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" reindent file
map == ggvG=''
" create one line of = symbols under the cursor
map =line o=========================================================================<ESC>0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Esc shortcut
imap jj <Esc>
" Unfold all file
map ZO ggvGzO
" disable highlighting : Useful after performing a search
map ** <ESC>:noh<RETURN>
" FIXME: Folding functions
map -f <ESC>/^}<RETURN><ESC>zf%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>ff <ESC>:lclose<RETURN>
map<leader>f <ESC>:lopen<RETURN>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>j :%!python -m json.tool<RETURN>
