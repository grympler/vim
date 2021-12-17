au BufNewFile,BufRead *.wiki set filetype=zettel
autocmd FileType *
            \ call deoplete#custom#buffer_option('auto_complete', v:false)
autocmd FileType zettel
            \ call deoplete#custom#buffer_option('auto_complete', v:true)
