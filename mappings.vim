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
nnoremap <SPACE>o :BufExplorer<CR>
" Tagbar
nnoremap :TG :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzy fzf file search
nnoremap <silent> <C-P> :FZF<CR>
" Fuzy buffer, that's right let's go crazy
command! -bang -nargs=? Buffers
            \ call fzf#vim#buffers(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline','--tiebreak=end']}), <bang>0)
nnoremap <silent> <C-O> :Buffers<RETURN>
" Search what's highlighted in files with Ag
nnoremap <silent> <Leader>* :Ag<CR>

" Search what's highlighted with Ag
" WIP
nnoremap <silent> <C-H> :Ag <C-R><C-W><CR>
" FullText search with AG
nnoremap <silent> <C-F> :Ag<CR>
" Symbol search in workspace with YCM
nnoremap <Leader>p <Plug>(YCMFindSymbolInWorkspace)
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Esc shortcut
imap jj <Esc>
" disable highlighting : Useful after performing a search
map ** <ESC>:noh<RETURN>
" Unfold all file
map ZO ggvGzO
" FIXME: Folding functions: can't get used to folding, maybe drop it
map -f <ESC>/^}<RETURN><ESC>zf%
" Insert breakpoint
command InsBreakpoint :normal o breakpoint()<CR><ESC>
nnoremap <C-B> :InsBreakpoint<ESC>

" source vimrc
nnoremap <F6> :source $MYVIMRC<CR>
nnoremap <C-C> "+y

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>ff <ESC>:lclose<RETURN>
map<leader>f <ESC>:lopen<RETURN>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map<leader>j :%!python -m json.tool<RETURN>
