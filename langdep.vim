" Perl
let perl_include_POD=1
let perl_extended_vars=1
let bash_is_sh=1
let highlight_balanced_quotes = 1
let highlight_function_name = 1

" Json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
