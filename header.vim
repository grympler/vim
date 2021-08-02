""""""""""""""""""""""""""""""""""""""""""""""
" File: header.vim
" Brief: header generation for vim configuration

" Creation Date: 13-02-2012
" Last Modified: Mon 09 Feb 2015 04:35:16 PM CET

" Author: grympler <grympler@protonmail.com>

""""""""""""""""""""""""""""""""""""""""""""""

" Python header
autocmd bufnewfile *.py so ~/.vim/header/py_header.txt
autocmd bufwritepost,filewritepost *.py execute "normal `a"

" KEPT FOR DOCUMENTATION PURPOSE
" Vim header
"autocmd bufnewfile *.vim,*vimrc so ~/.vim/header/vim_header.txt
"autocmd bufnewfile *.vim,*vimrc exe "1," . 10 . "g/File:.*/s//File: " .expand("%")
"autocmd bufnewfile *.vim,*vimrc exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")
"autocmd Bufwritepre,filewritepre *.vim,*vimrc execute "normal ma"
"autocmd Bufwritepre,filewritepre *.vim,*vimrc exe "1," . 10 . "g/Last Modified:.*/s/Last Modified:.*/Last Modified: " .strftime("%c")
"autocmd bufwritepost,filewritepost *.vim,*vimrc execute "normal `a"
