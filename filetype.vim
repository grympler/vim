" Global
augroup filetypedetect
	au BufNewFile,BufRead *.c                     	setf c
	au BufNewFile,BufRead *.hcc				set filetype=cpp
	au BufRead,BufNewFile *.aasm				set filetype=asm
	au BufRead,BufNewFile *.s 				set filetype=mips
	au BufRead,BufNewFile *.tig				set filetype=tiger
	au BufRead,BufNewFile *.tih				set filetype=tiger
	au BufRead,BufNewFile *.ll,*.yy			set filetype=cpp
	au BufRead,BufNewFile *.mak,*.mako			set filetype=mako
	au BufRead,BufNewFile *.txt				set filetype=txt
	au BufRead,BufNewFile *.js				set filetype=javascript
	au BufRead,BufNewFile *.py 			        set filetype=python
	au BufRead,BufNewFile *httpd*.conf			set filetype=apache "Apache config files
	au BufRead,BufNewFile .htaccess			set filetype=apache "htaccess files
	au! BufRead,BufNewFile *.json				set filetype=json
augroup END

augroup Binary
	au!
	au BufReadPre  *.o,out,*.obj,*.a,*.so,*.exe,*.bin let &bin=1
	au BufReadPost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd
	au BufReadPost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin set ft=xxd | endif
	au BufWritePre *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd -r
	au BufWritePre *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin endif
	au BufWritePost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd
	au BufWritePost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin set nomod | endif
augroup END

" Todo
au BufNewFile,BufRead *todo,*TODO		set ft=wtodo

" StripWhiteSpace
autocmd FileType * autocmd BufWritePre <buffer> StripWhitespace

" CSV plugin
if exists("did_load_csvfiletype")
	finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
	au! BufRead,BufNewFile *.csv,*.datsetfiletype csv
augroup END

" Yaml settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
