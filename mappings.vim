"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /!\ LEADER KEY /!\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Gundo
nnoremap <F5> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzy fzf file search
nnoremap <silent> <C-p> :FZF<CR>
" Search in file with Ag
nnoremap <silent> <Leader>p :Ag<CR>
" Symbol search in workspace with YCM
nmap <Leader>m <Plug>(YCMFindSymbolInWorkspace)
" Symbol search in doc with YCM
" Keep in case it become handy, but not needed as basic config
" is ok
"nmap <something> <Plug>(YCMFindSymbolInDocument)


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
" Folding functions
map -f <ESC>/^}<RETURN><ESC>zf%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>f <ESC>:Errors<RETURN>
map<leader>ff <ESC>:lclose<RETURN>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>j :%!python -m json.tool<RETURN>
