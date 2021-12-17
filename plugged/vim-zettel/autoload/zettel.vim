" TODO: Use var for formatter (being present or not, etc) and WIKI_DIR
func! zettel#edit(...)
    " build the file name
    let l:sep = ''
    if len(a:000) > 0
        let l:sep = '-'
    endif
    let l:fname = expand('~/wiki/') . strftime("%F-%H%M") . l:sep . join(a:000, '-') . '.wiki'

    " edit the new file
    exec "e " . l:fname

    " enter the title and timestamp (using ultisnips) in the new file
    if len(a:000) > 0
        exec "normal ggO\<c-r>=strftime('%Y-%m-%d %H:%M')\<cr> " . join(a:000) . "\<cr>\<esc>G"
    else
        exec "normal ggO\<c-r>=strftime('%Y-%m-%d %H:%M')\<cr>\<cr>\<esc>G"
    endif
endfunc

function! zettel#search(...)
    let l:query = join(a:000, ' ')
    " TODO: Handle default (grep, etc ...)
    let l:cmd = 'ag --vimgrep ' l:query ' ~/wiki/'
    let l:files = split(system(l:cmd), "\n")
    let l:qffiles = []
    for f in l:files
        call add(l:qffiles, {'filename': f})
    endfor
    call setqflist(l:qffiles)
    copen
    cc
endfunction

